#include<stdio.h>

int main() {

  while (1) {
    int n = 0;
    int res = scanf("%d", &n);
    if (res < 0) {
      break;
    }
    printf("%d\n", n * n);
  }
  return 0;
}
