#include <stdio.h>

//includes for getpid()
#include <sys/types.h>
#include <unistd.h>

int main(void)
{
	printf("Weryfikacja numeru procesu i jego rodzica\n");

	pid_t pid = getpid();
	printf("Moj numer procesu: %d\n", pid);

	pid_t ppid = getppid();
	printf("Numer procesu mojego rodzica: %d\n", ppid);

	return 0;
}
