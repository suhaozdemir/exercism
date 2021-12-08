class CollatzConjecture {
  int steps(int n){

  if(n <= 0) throw ArgumentError('Only positive numbers are allowed');

  int step = 0;

  while (n != 1){
   n.isEven ? n = n~/2 : n = n*3+1;
   step++;
  }

  return step;
  }
}
