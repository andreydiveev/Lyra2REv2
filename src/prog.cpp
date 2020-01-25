#include <iostream>
#include "lyra2v2.h"

int main (int argc, char *argv[]) {

    uint32_t len = 32;
    char* targetHash;
    //const char* input = "asdq";

    lyra2v2_hash("aaaw", targetHash, len);
    std::cout << targetHash;

    return 0;
}
