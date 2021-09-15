const service = document.querySelector('#booking-id')
const room = service.innerHTML;
// const batch = 386;
const baseUrl = `https://wagon-chat.herokuapp.com/${room}/messages`;

// const refreshBtn = document.querySelector('#refresh');
const messages = document.querySelector('#message-list');
const form = document.querySelector('#comment-form');
const content = document.querySelector('#your-message');
const name = document.querySelector('#my-name');

const refreshChat = () => {
  fetch(baseUrl)
    .then(response => response.json())
    .then((data) => {
      messages.innerHTML = "";
      data.messages.forEach((message) => {
        const minutesAgo = Math.round((new Date() - new Date(message.created_at)) / 60000);
        const fullMessage = `<li><strong>${message.author}</strong>: ${message.content} <span class="chat-date">(hace ${minutesAgo} minutos)</span></li>`;
        messages.insertAdjacentHTML('afterbegin', fullMessage);
      });
    });
};

// refreshBtn.addEventListener('click', refreshChat);

const postMessage = (msg) => {
  fetch(baseUrl, {
    method: 'POST',
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(msg)
  })
    .then(response => response.json())
    .then((data) => {
      refreshChat();
    });
};

form.addEventListener('submit', (event) => {
  event.preventDefault();
  const myMessage = { author: name.innerHTML, content: content.value };
  postMessage(myMessage);
});

document.addEventListener("DOMContentLoaded", refreshChat);

export { refreshChat };
export { form }