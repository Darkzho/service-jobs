import flatpickr from "flatpickr";
import { Spanish } from "flatpickr/dist/l10n/es.js"
const today = new Date()
const tomorrow = new Date(today)
tomorrow.setDate(tomorrow.getDate() + 1)

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    altInput: true,
    altFormat: "j F Y, h:i K",
    enableTime: true,
    dateFormat: "Y-m-d H:i:S",
    minDate : tomorrow,
    "locale": Spanish
  });
}

export { initFlatpickr };