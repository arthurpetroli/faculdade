#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <wait.h>

int main() {
    // wifexited(status) = true if exit by exit command
    // wexitstatus(status) = return the exit
    // wifsignaled(status) = true if process finish by signal
    // wtermsig(status) = return signal number
    return 0;
}