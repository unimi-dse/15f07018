#include <Rcpp.h>
using namespace Rcpp;

//' Fibonacci 
//' 
//' The Fibonacci Sequence is the series of numbers: 
//' 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ... 
//' The next number is found by adding up the two numbers before it.
//' 
//' @param n integer. Length of the Fibonacci Sequence
//' 
//' @details Implemented in C++
//' 
//' @return The Fibonacci Sequence
//' 
//' @export
//' 
// [[Rcpp::export]]
std::vector<int> fibonacci(int n) {

    std::vector<int> f;
  
    if(n>0)
      f.push_back(0);
    
    if(n>1)
      f.push_back(1);
    
    if(n>2) for(int i=2; i<n; i++)
      f.push_back(f[i-1]+f[i-2]);
    
    return(f);
    
}
