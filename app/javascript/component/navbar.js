
const navBar = function () {

  const navbar = document.querySelector(".navbar-expand-sm");
  const changings = document.querySelectorAll("#change-color");

  navbar.addEventListener("mouseenter", (event) => {
    changings.forEach((element) => {
      element.classList.remove("text-white");
      element.classList.add("text-black");
    });
  })

  navbar.addEventListener("mouseleave", (event) => {
    changings.forEach((element) => {
      element.classList.add("text-white");
      element.classList.remove("text-black");
    });
  });
}

export { navBar };
