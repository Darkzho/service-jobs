import Typed from 'typed.js';

const initTyped = () => {
  const element = document.querySelector('.typed-js');
  if (element) {
    new Typed('.typed-js', {
      strings: ['Proyectos domésticos', 'Obras de interiores', 'Instalación de palmetas', 'Extensión de red eléctrica', 'Pintado de casas', 'Limpieza de estufas', 'Instalacion de luminarias', 'Reparaciones electricas'],
      typeSpeed: 40,
      backSpeed: 10,
      fadeOut: true,
      loop: true,
    });;
  }
};

export { initTyped };