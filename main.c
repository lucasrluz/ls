#include <stdio.h>
#include <dirent.h>

void ls(char *dirname);

int main(int argc, char *argv[]) {
	char *dirname = ".";

	if (argc > 1) {
		dirname = argv[1];
	}

	ls(dirname);	
}

void ls(char *dirname) {
	DIR *directory_stream = opendir(dirname);

	struct dirent *directory;

	while ((directory = readdir(directory_stream)) != NULL) {
		if (directory->d_name[0] != '.') {
			printf("%s\n", directory->d_name);
		}
	}
}

