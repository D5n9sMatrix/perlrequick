#if 0
#include<Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
Environment create_person_item(){
  Environment g_env = Environment::global_env();
  Environment p_env = g_env["Person"];
  Function new_person = p_env["new"];
  Environment new_p;
  String name = "Jake";
  int id = 1;
  String item = "shovel";
  
  new_p = new_person(name, id);
  Function give_i = new_p["give_item"];
  give_i(item);
  
  return new_p;
}
#endif // 0