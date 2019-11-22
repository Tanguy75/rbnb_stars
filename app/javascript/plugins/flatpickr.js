import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

const toggleDateInputs = function() {
  const bookAgain = document.querySelectorAll('.book-again');
  const startDateInput = document.getElementById('booking_start_date');
  const book = document.querySelector('[data-disable-with="Book"]')
  if (book) { book.disabled = true }
  bookAgain.forEach((cta) => {

    cta.addEventListener('click', (event) => {

      const id = ".star" + event.currentTarget.id.toString();
      const unavailable = document.querySelectorAll(id);
      const price = document.getElementById('booking_price');
      let unavailableDates = [];
      unavailable.forEach((date) => {
        unavailableDates.push(date.dataset.unavailable);
      });


      if (startDateInput) {
        flatpickr(startDateInput, {
        mode: "range",
        minDate: 'today',
        dateFormat: 'd-m-Y',
        disable: unavailableDates,
        dateFormat: 'Y-m-d',
        onChange: function(selectedDates, selectedDate) {
          let initDate = flatpickr.parseDate(selectedDates[0], 'Y-m-d');
          let endDate = flatpickr.parseDate(selectedDates[1], 'Y-m-d');
          const numberOfNights = (endDate - initDate) / (1000 * 60 * 60 * 24);
          console.log(numberOfNights);

          if (numberOfNights) {
            price.value = price.value * numberOfNights;
          };

          if (startDateInput !== "") {
            book.disabled = false
          }

        }
      });
      }
    });
  });

    if (startDateInput) {
        const unavailable = document.querySelectorAll('.unavailable-dates');
        let unavailableDates = [];
        unavailable.forEach((date) => {
          unavailableDates.push(date.dataset.unavailable);
        });
        flatpickr(startDateInput, {
        mode: "range",
        minDate: 'today',
        dateFormat: 'd-m-Y',
        disable: unavailableDates,
        dateFormat: 'Y-m-d',
        onChange: function(selectedDates, selectedDate) {
          let initDate = flatpickr.parseDate(selectedDates[0], 'Y-m-d');
          let endDate = flatpickr.parseDate(selectedDates[1], 'Y-m-d');
          const numberOfNights = (endDate - initDate) / (1000 * 60 * 60 * 24);
          console.log(numberOfNights);
          if (numberOfNights) {
            price.value = price.value * numberOfNights;
          }
          if (startDateInput !== "") {
            book.disabled = false
          }
      }
      });
    };

  };

export { toggleDateInputs }
