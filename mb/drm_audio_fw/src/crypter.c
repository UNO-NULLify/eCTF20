/*
 * Author qu3b411
 *
 * Dont allow static reverse engineering 
 */
#include <stdio.h>
#include <stdlib.h>
#include "monocypher.h"


int main(int argv, char* argc[])
{
char rnd[0x80]={'\x78','\x78','\x21','\xda','\x88','\x38','\xa9','\x0a','\x3a','\x98','\x70','\x59','\x08','\xd9','\xd5','\x60',
                 '\x21','\x43','\xd9','\xd8','\x9a','\x2a','\x6b','\xb5','\xe7','\xbe','\x83','\x97','\x9d','\x6f','\xfd','\x9d',
                 '\xdc','\x44','\x17','\x91','\xc1','\xab','\x13','\x75','\xa3','\x48','\xaa','\xc3','\xd5','\xb1','\xb0','\xd2',
                 '\x55','\xc9','\x1a','\x22','\xa0','\x8d','\xf4','\x58','\x72','\xa4','\xd3','\xa8','\x51','\xaf','\xe3','\xb5',
                 '\x60','\xb1','\xaf','\x38','\xc3','\x7d','\xe6','\xae','\x7e','\x40','\xae','\x94','\x62','\xf3','\x8e','\xc9',
                 '\x8c','\x37','\xe5','\x08','\x86','\xdb','\xac','\xd7','\x44','\x36','\x6d','\x51','\x63','\x70','\xa7','\xfc',
                 '\x88','\x07','\x85','\x32','\x96','\xe0','\xf1','\xbb','\x4a','\xb3','\x1f','\xd1','\x26','\xe4','\xc6','\xf2',
                 '\xbb','\x17','\x84','\xce','\xc3','\x17','\xad','\x0a','\x46','\xfb','\x1f','\xfd','\x18','\x25','\x9d','\x54'
                 };
    uint8_t file [0x1100];

    if (argv<2){
        fprintf(stderr,"USAGE: ./%s <filename>\n",argc[0]);
        return-1;
    }
    FILE* pFile = fopen(argc[1],"rb+");

    if (pFile == NULL)
    {
        fprintf(stderr,"'%s' is not a file", argc[1]);
        return -1;
    }
    if (fseek(pFile,0x9dbc,SEEK_SET) != 0){
        perror("unable to open the section for reading");
        return -1;
    }
    int result = fread(file, 1, 0x1100, pFile);
    if (result != 0x1100) {
        perror("Unable to read data segmant\n");
        return -1;
    }

    if (fseek(pFile,0x9dbc,SEEK_SET)!=0)
    {
        perror("unable to open the section for reading");
        return -1;
    }
    for(int x = 0; x< 0x1100; x++){
        file[x] ^= (unsigned char)((rnd[x%0x80]*x)%0xff);
    }
    result = fwrite(file,1,0x1100,pFile);
    fclose(pFile);
    return 0;
}
