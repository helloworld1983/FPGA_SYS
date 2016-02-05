#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <errno.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <termio.h>
#include <signal.h>

void allwrite_w(int fd, unsigned char *buf, int len);
void allwrite_r(int fd, unsigned char *buf, int len);
void config_console();

int main(int argc, char *argv[]) {
  int fd_r, rc_r;
  int fd, rc;
  unsigned char buf[128];


  fd = open("/dev/xillybus_write_8", O_WRONLY);
fd_r = open("/dev/xillybus_read_8", O_RDONLY);
if (argc!=2) {
    fprintf(stderr, "Usage: %s devfile\n", argv[0]);
    exit(1);
  }
  freopen(argv[1],"r",stdin);

  config_console(); // Configure standard input not to wait for CR


///

  unsigned char buf_r[128];

///


  while (1) {

    // Read from standard input = file descriptor 0
     rc = read(0,buf, sizeof(buf));

    if ((rc < 0) && (errno == EINTR))
      continue;

    if (rc < 0) {
      perror("allread() failed to read");
      exit(1);
    }

    if (rc == 0) {
      fprintf(stderr, "PARSE ERROR.\n");
      exit(0);
    }

    allwrite_w(fd, buf, rc);


///


    //rc_r = read(fd_r, buf_r, sizeof(buf_r));
   rc_r = read(fd_r, buf_r, sizeof(buf_r));

    if ((rc_r < 0) && (errno == EINTR))
      continue;

    if (rc_r < 0) {
      perror("allread() failed to read");
      exit(1);
    }

    if (rc_r == 0) {
      fprintf(stderr, "Reached read EOF.\n");
      exit(0);
    }

    // Write all data to standard output = file descriptor 1
    // rc contains the number of bytes that were read.

    allwrite_r(1, buf_r, rc_r);

///

  }
  /*
  int fd_r, rc_r;
  unsigned char buf_r[128];

  fd_r = open("/dev/xillybus_read_8", O_RDONLY);

  while (1) {
    rc_r = read(fd_r, buf_r, sizeof(buf_r));

    if ((rc_r < 0) && (errno == EINTR))
      continue;

    if (rc_r < 0) {
      perror("allread() failed to read");
      exit(1);
    }

    if (rc_r == 0) {
      fprintf(stderr, "Reached read EOF.\n");
      exit(0);
    }

    // Write all data to standard output = file descriptor 1
    // rc contains the number of bytes that were read.

    allwrite_r(1, buf_r, rc_r);
  }
*/
}

/*
   Plain write() may not write all bytes requested in the buffer, so
   allwrite() loops until all data was indeed written, or exits in
   case of failure, except for EINTR. The way the EINTR condition is
   handled is the standard way of making sure the process can be suspended
   with CTRL-Z and then continue running properly.

   The function has no return value, because it always succeeds (or exits
   instead of returning).

   The function doesn't expect to reach EOF either.
*/

void allwrite_w(int fd, unsigned char *buf, int len) {
  int sent = 0;
  int rc;

  while (sent < len) {
    rc = write(fd, buf + sent, len - sent);

    if ((rc < 0) && (errno == EINTR))
      continue;

    if (rc < 0) {
      perror("allwrite() failed to write");
      exit(1);
    }

    if (rc == 0) {
      fprintf(stderr, "Reached write EOF (?!)\n");
      exit(1);
    }

    sent += rc;
  }
}

/* config_console() does some good-old-UNIX vodoo standard input, so that
   read() won't wait for a carriage-return to get data. It also catches
   CTRL-C and other nasty stuff so it can return the terminal interface to
   what is was before. In short, a lot of mumbo-jumbo, with nothing relevant
   to Xillybus.
 */

void config_console() {
  struct termio console_attributes;

  if (ioctl(0, TCGETA, &console_attributes) != -1) {
    // If we got here, we're reading from console

    console_attributes.c_lflag &= ~ICANON; // Turn off canonical mode
    console_attributes.c_cc[VMIN] = 1; // One character at least
    console_attributes.c_cc[VTIME] = 0; // No timeouts

    if (ioctl(0, TCSETAF, &console_attributes) == -1)
      fprintf(stderr, "Warning: Failed to set console to char-by-char\n");
  }
}


/*
   Plain write() may not write all bytes requested in the buffer, so
   allwrite() loops until all data was indeed written, or exits in
   case of failure, except for EINTR. The way the EINTR condition is
   handled is the standard way of making sure the process can be suspended
   with CTRL-Z and then continue running properly.

   The function has no return value, because it always succeeds (or exits
   instead of returning).

   The function doesn't expect to reach EOF either.
*/

void allwrite_r(int fd, unsigned char *buf, int len) {
  int sent = 0;
  int rc;

  while (sent < len) {
 //   rc = write(fd, buf + sent, len - sent);
            if(*(buf+sent) == 'a') {
        printf("PARSE SUCCESS.\n");
        exit(0);
        }
    if ((rc < 0) && (errno == EINTR))
      continue;

    if (rc < 0) {
      perror("allwrite() failed to write");
      exit(1);
    }

    if (rc == 0) {
      fprintf(stderr, "Reached write EOF (?!)\n");
      exit(1);
    }

    sent += rc;
  }
}
