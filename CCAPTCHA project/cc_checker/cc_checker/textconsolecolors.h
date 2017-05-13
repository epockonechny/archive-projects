#ifndef TEXTCONSOLECOLORS_H_INCLUDED
#define TEXTCONSOLECOLORS_H_INCLUDED

#include <iostream>

#define C_Reset      0
#define C_Bold       1
#define C_Under      2
#define C_Invers     3
#define C_Normal     4
#define C_Black      4
#define C_Red        5
#define C_Green      6
#define C_Brown      7
#define C_Blue       8
#define C_Magenta    9
#define C_Cyan       10
#define C_Light      11
#define N_COLORS     C_Light+1

using std::endl;
using std::cout;

static int tcolor [N_COLORS] = {
    0,  1,  4,  7, 30, 31,
    32, 33, 34, 35, 36, 37
};

void printsep(){
    cout << "\033[32m ~~~ ~~~ ~~~ \033[0m\n";
}

void printlsep(){
    cout << "\n\033[32m ________________________________ \033[0m\n\n";
}

#endif // TEXTCONSOLECOLORS_H_INCLUDED