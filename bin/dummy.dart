void main() {
print(josephus(14, 2));
}
int josephus(int N, int k)
{
  int i = 1, ans = 0;
  while (i <= N) {
    ans = (ans + k) % i;
    i++;
  }
  return ans + 1;
}