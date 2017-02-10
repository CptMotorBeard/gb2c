#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
size_t getline(char **lineptr, size_t *n, FILE *stream) {
unsigned char tolower(unsigned char ch) {
    if (ch >= 'A' && ch <= 'Z')
        ch = 'a' + (ch - 'A');
    return ch;
 }
    char *bufptr = NULL;
    char *p = bufptr;
    size_t size;
    int c;

    if (lineptr == NULL) {
        return -1;
    }
    if (stream == NULL) {
        return -1;
    }
    if (n == NULL) {
        return -1;
    }
    bufptr = *lineptr;
    size = *n;

    c = fgetc(stream);
    if (c == EOF) {
        return -1;
    }
    if (bufptr == NULL) {
        bufptr = malloc(128);
        if (bufptr == NULL) {
            return -1;
        }
        size = 128;
    }
    p = bufptr;
    while(c != EOF) {
        if ((p - bufptr) > (size - 1)) {
            size = size + 128;
            bufptr = realloc(bufptr, size);
            if (bufptr == NULL) {
                return -1;
            }
        }
        *p++ = c;
        if (c == '\n') {
            break;
        }
        c = fgetc(stream);
    }

    *p++ = '\0';
    *lineptr = bufptr;
    *n = size;

    return p - bufptr - 1;
}
int strcicmp(char const *a, char const *b){
    for (;; a++, b++) {
        int d = tolower(*a) - tolower(*b);
        if (d != 0 || !*a)
            return d;
    }
}
void RemoveSpaces(char* source)
{
  char* i = source;
  char* j = source;
  while(*j != 0)
  {
    *i = *j++;
    if(*i != ' ')
      i++;
  }
  *i = 0;
}
int main(int argc, char* argv[]){
    char* oLine = NULL;
    char* rLine = NULL;
    size_t oRead;
    size_t rRead;
    int line = 0;

    FILE *ours = fopen( argv[1], "r" );
    FILE *result = fopen( argv[2], "r" );
    FILE *errFile = fopen( "differences.txt", "w");
    size_t len = 0;
    int end = 0;
    while(end == 0){
        oRead = getline(&oLine, &len, ours);
        rRead = getline(&rLine, &len, result);
        if(oRead == -1 || rRead == -1){end = 1;}
        else{
            RemoveSpaces(oLine);
            RemoveSpaces(rLine);
            if(strcicmp(oLine, rLine) != 0){
                fprintf(errFile, "Our output: %s",oLine);
                fprintf(errFile, "Their out : %s",rLine);
                fprintf(errFile, "Line      : %i\n", line);
            }
        line++;
        }
    }
    fclose(errFile);
    fclose(ours);
    fclose(result);
    return 0;
}
