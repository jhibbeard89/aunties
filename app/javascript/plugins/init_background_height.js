const background_page_height = () => {
  let page_height = document.body.scrollHeight
  const backgroundImage = document.getElementById('background-image')
  if (backgroundImage){
    backgroundImage.style.height = `${page_height}px`;
  }
}

export {background_page_height}
