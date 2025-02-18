void main (){
  
  var bio = showMyBio("Vishal", 21);
  print (bio);
}

String showMyBio (String name, int age){
  
  var bio = "$name is $age years old.";
  return bio;
}