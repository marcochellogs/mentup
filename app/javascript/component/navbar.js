
const navbar = document.querySelector(".navbar-expand-sm");
const changings = document.querySelectorAll("#change-color");

navbar.addEventListener("mouseenter", (event) => {
    console.log('soraya')
  changings.forEach((element) => {
    console.log(element)
    element.classList.remove("text-white");
    element.classList.add("text-black");
  });
})

navbar.addEventListener("mouseleave", (event) => {
    console.log('soraya')
  changings.forEach((element) => {
    console.log(element)
    element.classList.add("text-white");
    element.classList.remove("text-black");
  });
})
