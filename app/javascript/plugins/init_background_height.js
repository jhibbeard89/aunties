const background_page_height = () => {
  let page_height = document.body.scrollHeight
  document.getElementById('background-image').style.height = `${page_height}px`;
}

export {background_page_height}
