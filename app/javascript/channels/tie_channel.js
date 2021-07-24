import consumer from "./consumer";

  const messagesContainer = document.getElementById('messages'); // id messages are in ties#show
  if (messagesContainer) {
    const id = messagesContainer.dataset.tieId;

    consumer.subscriptions.create({ channel: "TieChannel", id: id }, {
      received(data) {
        console.log(data);
        console.log(messagesContainer);
        // DO NOT change "updatedmessagesContainer" name
        const updatedmessagesContainer = document.getElementById('messages');
        updatedmessagesContainer.insertAdjacentHTML('beforeend', data);
 // called when data is broadcast in the cable
      },
    });
  }




