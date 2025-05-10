#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

int main(void)
{
	pid_t pid;
	int rv;

	switch(pid = fork())
	{
		case -1:
			perror("fork");
			exit(1);
		case 0:
			printf("CHILD: PID: %d\n", getpid());
			printf("CHILD: Parent PID: %d\n", getppid());
			printf("CHILD: enter exit status: ");
			scanf("%d", &rv);
			exit(rv);
		default:
			printf("PARENT: PID: %d\n", getpid());
			printf("PARENT: Child PID: %d\n", pid);
			wait(&rv);
			printf("PARENT: Child exit status: %d\n", WEXITSTATUS(rv));
	}

	return 0;

}
