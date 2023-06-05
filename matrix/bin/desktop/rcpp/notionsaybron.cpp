#if 0
#include<Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
String access_method(std::string foo_name){
  Environment g_env = Environment::global_env();
  Environment p_env = g_env["Person"];
  Function new_person = p_env["new"];
  Environment new_p;
  String name = "Jake";
  int id = 1;
  
  new_p = new_person(name, id);
  Function foo = new_p[foo_name];
  String res = foo();
  
  return res;
}
#endif // 0