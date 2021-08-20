const LogoTogal = () => {
  const banner_exists = document.querySelector('#banner')
  const header_logo = document.querySelector('#logo');
  const header_links = document.querySelector('#links')
  header_logo.classList.remove('hidden')
  header_links.classList.remove('hidden')
  if (banner_exists) {
    header_logo.classList.add('hidden')
    header_links.classList.add('hidden')
  }


  window.addEventListener("scroll", () => {
    const banner_exists_on_scroll = document.querySelector('#banner')
    if (!banner_exists_on_scroll) return false

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
