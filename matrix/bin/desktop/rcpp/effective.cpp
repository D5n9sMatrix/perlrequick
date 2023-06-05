#if 0
#include<Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
List initialize_list(unsigned int size){
  List res(size);
  Environment package_env("package:some_package");
  Environment class_env = package_env["some_class"];
  Function new_instance = class_env["new"];
  
  for(unsigned int i = 0; i < size; i++){
    Environment new_i;
    new_i = new_instance();
    res[i] = new_i;
  }
  
  return res;
}
#endif // 0