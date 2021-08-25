const booking = 1000;
const baseUrl = `https://wagon-chat.herokuapp.com/${booking}/messages`;

const refreshBtn = document.querySelector('#refresh');

refreshBtn.addEventListener('click' , () => {
  fetch(baseUrl)
    .then(response => response.json())
    .then((data) => {
      console.log(data);
    });
});

export { refreshBtn };