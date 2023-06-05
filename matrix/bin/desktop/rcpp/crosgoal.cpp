#if 0
#include<Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
void give_shovel(Environment &person){
  String item = "shovel";
  
  Function give_i = person["give_item"];
  give_i(item);
}
#endif // 0