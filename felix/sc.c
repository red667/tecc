// astera@hackerspaces.org

inline int numdiv(int l)
{
  int i = 1;
  int res = 0;
  
  while (1)
  {
    if (!(l%i))
    {
      if (l/i == i)
        res++;
      if (l/i > i)
        res+=2;
      else
        break;
    }
    ++i;
  }
  return res;
}

int main(void)
{
  int n = 1;
  int t = 1;
  while (1)
  {
    int l = numdiv(t);
    if (l > 500)
    {
      printf("%d => %d\n",t, l);
      return 0;
    }
    n++;
    t += n;
  }
}