#include <stdio.h>
int main(int argc, char** argv) {
  FILE* f;
  char* line;
  size_t len;

  f = fopen("inputfile.txt", "r");
  if (!f) {
    fprintf(stderr, "Error opening file for reading.\n");
    return 1;
  }
  while (line = fgetln(f, &len)) {
    fputs("LINE: ", stdout);
    fwrite(line, len, 1, stdout);
  }
  fclose(f);
  return 0;
}
