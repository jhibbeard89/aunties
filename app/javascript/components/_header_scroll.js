const LogoTogal = () => {
  window.addEventListener("scroll", () => {
    const header_logo = document.querySelector('#logo');
    const header_links = document.querySelector('#links')
    if (window.scrollY > 120){
      header_logo.classList.remove('hidden')
      header_links.classList.remove('hidden')
    } else {
      header_logo.classList.add("hidden")
      header_links.classList.add("hidden")
    }
  });

};

export {LogoTogal}
