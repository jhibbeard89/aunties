const LogoTogal = (listener) => {
  window.addEventListener("scroll", () => {
    const header_logo = document.querySelector('#logo');
    if (window.scrollY > 120){
      header_logo.classList.remove("hidden")
    } else {
      header_logo.classList.add("hidden")
    }
  });

};

export {LogoTogal}
