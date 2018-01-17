public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}

public boolean palindrome(String word)
{
  if(palindromifier(word).equals(reverse(palindromifier(word))))
  {
    return true;
  }
  return false;
}

public String palindromifier(String word)
{
  String perfectForm = "";
  for (int i = 0; i < word.length(); i++)
  {
    char symbol = word.substring(i, i+1).charAt(0);
    if ((!word.substring(i, i+1).equals(" ")) && Character.isLetter(symbol) == true)
    {
      perfectForm += word.substring(i, i+1);
    }
  }
  perfectForm = perfectForm.toLowerCase();
  return perfectForm;
}

public String reverse(String str)
{
  String sReversed = "";
  for (int i = str.length() - 1; i >= 0; i--)
  {
    sReversed += str.charAt(i);
  }
  return sReversed;
}


