const URL = 'https://petdibs.herokuapp.com/pets';

$(document).ready(() => {
  const $petsList = $('.pets');
  // 1
  axios.get(URL)
    .then((response) => {
      response.data.slice(0, 10).forEach((pet) => {
        const $petItem = $(`<li>${pet.name}</li>`);

        $petItem.click(() => {
          axios.get(URL + '/' + pet.id)
            .then((response) => {
              const pet = response.data;

              $('body').append(`
                <div class="pet-info">
                  <p>${pet.name}</p>
                  <p>${pet.breed}</p>
                  <p>${pet.age}</p>
                </div>`);
            });
        });

        // 3
        $petsList.append($petItem);
      });
    });

    // 2
});