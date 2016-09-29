function checkPassword(){
    
   var pass1 = document.getElementById("password").value;
   var pass2 = document.getElementById("password2").value;
   
   if(pass1 != pass2 || pass2!=pass1){
      $('#password2').toggleClass("password-validation");
   }

    
}
