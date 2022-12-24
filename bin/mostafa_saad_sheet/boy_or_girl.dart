void main(){
checkGirl("assaaf");
}
void checkGirl(String userName){
  String x=userName[0];
  int counter=1;
  userName.split("").toSet().forEach((e){
    if(e != x){counter++;}
  });
 if(counter.isOdd) {print("Ignore him");}
 else if(counter.isEven){print("Let's date !");}
}