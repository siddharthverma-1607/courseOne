
//window risize
window.onresize = function(){ 
    location.reload(); 
  }
  
  //owl carousel
  $(".carousel").owlCarousel({
             margin: 0,
             loop: true,
             autoplay: true,
             autoplayTimeout: 1000,
             autoplayHoverPause: true,
             responsive: {
               0:{
                 items:3,
                 nav: true
               },
               600:{
                 items:4,
                 nav: true
               },
               700:{
                 items:5,
                 nav: true
               },
               1000:{
                 items:5,
                 nav: true
               }
             }
           });
  
  
  
  //sheo color change
  let sheo = document.querySelector('#sheochange');
  
  //active
  const sheos = document.querySelectorAll(".sheos");
  
  
  function sheoColorChange(img,num){
    sheo.src = img;
    
    var current = document.getElementsByClassName('sheoActive');
      
     current[0].className = current[0].className.replace(" sheoActive","");
      
     sheos[num].className += " sheoActive";
  
  }
  
  
  
  
  
  //bracelet color change
  let bracelet = document.querySelector('#bracelet');
  
  //active
  const bracelets = document.querySelectorAll(".bracelets");
  
  
  function braceletColorChange(img,index){
    bracelet.src = img;
    
      var braceletActive = document.getElementsByClassName('braceletActive');
      
     braceletActive[0].className = braceletActive[0].className.replace("braceletActive","");
      
     bracelets[index].className += " braceletActive";
    
  }
  
  
  //bag color change
  let bag = document.querySelector('#bag');
  
  //active
  const bags = document.querySelectorAll(".bag");
  
  function bagColorChange(img,index){
    bag.src = img;
    
        var bagActive = document.getElementsByClassName('bagActive');
      
     bagActive[0].className = bagActive[0].className.replace("bagActive","");
      
     bags[index].className += " bagActive";
    
  }
  
  
  
  //menu bar
  
  let menu = document.querySelector('.fa-bars');
  let menubar = document.querySelector('.menu-bar');
  let a = true;
  menu.addEventListener("click",()=>{
    
    if(a == true){
      menubar.style.height = "180px";
      menu.classList.replace("fa-bars", "fa-remove");
      a = false;
    }else{
      menubar.style.height = "0px";
      menu.classList.replace("fa-remove", "fa-bars");
      a = true;
    }
    
  });
  
  //side menu bar
  let menubarside = document.querySelector('.menu-bar-side');
  let b = true;
  menubarside.addEventListener("click",()=>{
    
    if(b == true){
      menubarside.style.left = "0%";
      b = false;
    }else{
      menubarside.style.left = "-162px";
      b = true;
    }
    
  });