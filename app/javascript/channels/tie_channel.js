import consumer from "./consumer";

  const messagesContainer = document.getElementById('messages'); // id messages are in ties#show
  if (messagesContainer) {
    const id = messagesContainer.dataset.tieId;
    const current_user_id = messagesContainer.dataset.currentUserId;
    consumer.subscriptions.create({ channel: "TieChannel", id: id }, {
      received(data) {
        if (data.current_user_id !== Number(current_user_id) ) {
          console.log(messagesContainer);
        // DO NOT change "updatedmessagesContainer" name
        const updatedmessagesContainer = document.getElementById('messages');
        updatedmessagesContainer.insertAdjacentHTML('beforeend', data.partial);
      }
    }
  });
  }




