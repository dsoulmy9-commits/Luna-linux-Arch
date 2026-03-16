#include <stdio.h>
#include <stdlib.h>

int main() {
    printf("\033[1;36m"); // Голубой цвет (Лунный свет)
    printf("    _                      \n");
    printf("   | |   _   _ _ __   __ _ \n");
    printf("   | |  | | | | '_ \\ / _` |\n");
    printf("   | |__| |_| | | | | (_| |\n");
    printf("   |_____\\__,_|_| |_|\\__,_|\n");
    printf("\033[0m");
    printf("\n--- Luna Linux [Arch Based] ---\n");

    // Вызов системной информации
    system("uname -sr");
    printf("Status: Operational\n");
    printf("Commands: 'archinstall' to start setup\n");

    return 0;
}
