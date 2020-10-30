
const navBar = function () {

  const navbar = document.querySelector(".navbar-expand-sm");
  const changings = document.querySelectorAll("#change-color");
  const logos = document.querySelectorAll(".top-left");

  navbar.addEventListener("mouseenter", (event) => {
    logos.forEach((element) => {
      element.classList.toggle("invisible");
    });
    changings.forEach((element) => {
      element.classList.remove("text-white");
      element.classList.add("text-black");
    });
  })

  navbar.addEventListener("mouseleave", (event) => {
    logos.forEach((element) => {
      element.classList.toggle("invisible");
    });
    changings.forEach((element) => {
      element.classList.add("text-white");
      element.classList.remove("text-black");
    });
  });
}

export { navBar };
