#include <stdio.h>
#include <dirent.h>

int main() {
	DIR *directory_stream = opendir(".");

	struct dirent *directory;

	while ((directory = readdir(directory_stream)) != NULL) {
		if (directory->d_name[0] != '.') {
			printf("%s\n", directory->d_name);
		}
	}
}

