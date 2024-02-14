void setup() {
  String woorden = maakZin("Hoe ", "gaat ", "het", "?");
  println(woorden); 
}

String maakZin(String str1, String str2, String str3, String str4) {
  return str1 + str2 + str3 + str4;
}
