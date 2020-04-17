typedef struct {
  int a[8 * sizeof 0]
} b;
c(b *f) { int e = f; }
g() {
  b d;
  c(&d);
  h(d);
}
