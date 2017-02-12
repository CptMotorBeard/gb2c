#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

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

int stricmp(const char *a, const char *b) {
  int ca, cb;
  do {
     ca = (unsigned char) *a++;
     cb = (unsigned char) *b++;
     ca = tolower(toupper(ca));
     cb = tolower(toupper(cb));
   } while (ca == cb && ca != '\0');
   return ca - cb;
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
            if(stricmp(oLine, rLine) != 0){
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