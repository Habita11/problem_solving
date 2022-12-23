void main(){
//print(finalValueAfterOperations(["X++","++X","X++","X--","--X"]));
// print(numJewelsInStones("aAsy", "staSyA"));
//print(uniqueMorseRepresentations(["msg"]));
// print(replaceDigits("a1b2c1"));
var y='-4';
var x=int.tryParse(y);
print(x);
}
/// Value after operation : https://leetcode.com/problems/final-value-of-variable-after-performing-operations/
int finalValueAfterOperations(List<String> operations) {
  int x=0;
  for(int i=0;i<operations.length;i++){
    switch(operations[i]){
      case "X++":
        x++;
        break;
      case "X--":
        x--;
        break;
      case "++X":
        ++x;
        break;

      case "--X":
        --x;
    }
  }
return x;
}

/// Stones or jewels : https://leetcode.com/problems/jewels-and-stones/
int numJewelsInStones(String jewels, String stones) {
  int jewelsNumber=0;
  for(var i in stones.split("")){
    if(jewels.split("").contains(i)){
      jewelsNumber++;
    }
  }
return jewelsNumber;
}

/// Longest sentence : https://leetcode.com/problems/maximum-number-of-words-found-in-sentences/
int mostWordsFound(List<String> sentences) {
  int numberOfWords=0;
  int maxNumOfWords=0;
  for(String sentence in sentences){
   numberOfWords= sentence.split(" ").length;
   if(numberOfWords>maxNumOfWords){maxNumOfWords=numberOfWords;}
  }
return maxNumOfWords;
}

/// Morse code : https://leetcode.com/problems/unique-morse-code-words/
int uniqueMorseRepresentations(List<String> words) {
 Set codes={};
 Map morse={"a":".-","b":"-...","c":"-.-.","d":"-..","e":".","f":"..-.","g":"--.","h":"....","i":"..","j":".---",
           "k":"-.-","l":".-..","m":"--","n":"-.","o":"---","p":".--.","q":"--.-","r":".-.","s":"...","t":"-",
            "u":"..-","v":"...-","w":".--","x":"-..-","y":"-.--","z":"--.."};
 words.forEach((element) {
   String encoded="";
 for(var i in element.split("")){
   encoded=encoded+morse[i];
 }
   codes.add(encoded);
 });
return codes.length;
}

/// Replace digits in a string : https://leetcode.com/problems/replace-all-digits-with-characters/
String replaceDigits(String s) {
String newText='';
for(int i=0;i<s.split("").length;i++){
  var x=int.tryParse(s.split("")[i]);
  if(x!=null){
    newText=newText+String.fromCharCode(s[i-1].codeUnitAt(0)+x);
  }else{
    newText=newText+s[i];
  }
}
return newText;
}












