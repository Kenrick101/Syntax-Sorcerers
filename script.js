function changeCss () {
    var navElement = document.querySelector(".nav-bar");
    if(this.scrollY > 1)
    {
     
      navElement.style.backgroundColor = "black";
    }
    else
    {
       navElement.style.backgroundColor = "";
    }
 }
window.addEventListener("scroll", changeCss , false);