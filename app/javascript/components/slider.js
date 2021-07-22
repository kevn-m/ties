function slider() {
  var slides = document.querySelector("#slides");
  if (slides){
    var reject_button = document.querySelector("#reject");
    var accept_button = document.querySelector("#accept");

    reject_button.addEventListener('click', () => {
      console.log("hello world");
      // console.log(event);
      // console.log(event.currentTarget);
    });
  }
//   var slides = document.querySelectorAll('#slides .slide');
//   var currentSlide = 0;
}



// function nextSlide() {
//     slides[currentSlide].className = 'slide';
//     currentSlide = (currentSlide+1)%slides.length;
//     slides[currentSlide].className = 'slide showing';
// }

export { slider };
