import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    dateFormat: "d.m.Y",
    maxDate: "31.12.2022"
  });
}
export { initFlatpickr };
