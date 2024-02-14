int fibonacci(int n) {
  if (n <= 1) {
    return n;
  } else {
    int a = 0;
    int b = 1;
    for (int i = 2; i <= n; i++) {
      int temp = b;
      b = a + b;
      a = temp;
    }
    return b;
  }
}

void setup() {
  int n = 10; // Change the value of n to generate different terms of the Fibonacci sequence
  for (int i = 0; i < n; i++) {
    int result = fibonacci(i);
    println(result);
  }
}
