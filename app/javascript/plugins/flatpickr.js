import flatpickr from "flatpickr";
import { Spanish } from "flatpickr/dist/l10n/es.js"

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    altInput: true,
    altFormat: "j F Y, h:i K",
    enableTime: true,
    dateFormat: "Y-m-d H:i:S",
    "locale": Spanish
  });
}

export { initFlatpickr };