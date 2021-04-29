import consumer from "./consumer";

const initBuddyshipCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.buddyshipId;

    consumer.subscriptions.create({ channel: "BuddyshipChannel", id: id }, {
      received(data) {
        messagesContainer.insertAdjacentHTML('beforeend', data);
      },
    });
  }
}

export { initBuddyshipCable };
