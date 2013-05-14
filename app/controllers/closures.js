


 function me(x){

  function(){
    alert(x);
  }  
}




_bind = function(thisContext) {

  return function(){
    this.apply(thisContext, arguments)
  }
}

