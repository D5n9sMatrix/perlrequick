#if 0
#include<Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
List initialize_list(StringVector &names, IntegerVector &ids){
  List res(names.size());
  Environment g_env = Environment::global_env();
  Environment p_env = g_env["Person"];
  Function new_person = p_env["new"];
  
  for(unsigned int i = 0; i < names.size(); i++){
    Environment new_p;
    String name = names[i];
    int id = ids[i];
    new_p = new_person(name, id);
    res[i] = new_p;
  }
  
  return res;
}
#endif // 0