public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String sWord){
  String backward = onlyLetters(noSpaces(upperCase(reverse(sWord))));
  String forward = onlyLetters(noSpaces(upperCase(sWord)));
  for(int i = 0; i < sWord.length(); i++){
    if(forward.equals(backward)){
      return true;
    }
  }
  if(sWord.equals("")){
    return true;
  }
  return false;
}
public String reverse(String sWord){
  String x = "";
  int last = sWord.length() - 1;
  for(int i = last; i >= 0; i--){
    x = x + sWord.substring(i, i + 1);
  }
  return x;
}
public String upperCase(String str){ //ignore case
	return str.toUpperCase();
}
public String noSpaces(String sWord){ //return string with no spaces
  String x = "";
  for(int i = 0 ; i < sWord.length(); i++){
    if(!(sWord.substring(i, i + 1).equals(" "))){
       x = x + sWord.substring(i, i + 1);
    }
  }
  return x;
}
public int numLetters(String sString){ //returns the length of the onlyLetter string
  String x = "";
  for(int i = 0; i < sString.length() ; i++){
    if(Character.isLetter(sString.charAt(i))){
      x += sString.substring(i, i + 1);
    }
  }
  return x.length();
}
public String onlyLetters(String sString){ //returns the only letter string
  String x = "";
  for(int i = 0; i < sString.length(); i++){
    if(Character.isLetter(sString.charAt(i)))
      x += sString.substring(i, i + 1);
  }
  return x;
}
