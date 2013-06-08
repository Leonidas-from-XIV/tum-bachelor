#include <stdio.h>
#include <string.h>
int fgetline(char* line, int max, FILE* f) {
  if (fgets(line, max, f) == NULL)
    return 0;
  else
    return strlen(line);
}
int main(int argc, char** argv) {
  FILE* f;
  char line[256];

  f = fopen("inputfile.txt", "r");
  if (!f) {
    fprintf(stderr, "Error opening file for reading.\n");
    return 1;
  }
  while (fgetline(line, 256, f)) {
    fputs("LINE: ", stdout);
    fwrite(line, strlen(line), 1, stdout);
  }
  fclose(f);
  return 0;
}
