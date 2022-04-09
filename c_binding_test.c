#include <stdio.h>
#include "vex.h"

int main(int argc, char *argv[]) {
	const uint32_t version = vex_runtime_version();
	printf("Version: %d\n", version);

	return 0;
}
