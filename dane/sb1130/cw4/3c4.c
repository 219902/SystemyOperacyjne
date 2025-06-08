#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int main(void)
{
	printf("Weryfikacja numeru procesu programu i jego rodzica\n");

	pid_t pid = getpid();
	printf("Numer procesu: %d\n", pid);

	pid_t ppid = getppid();
	printf("Numer procesu rodzica: %d\n", ppid);

	return 0;
}
