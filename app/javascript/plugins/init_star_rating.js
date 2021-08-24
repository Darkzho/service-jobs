import 'jquery-bar-rating';

const initStarRating = () => {
  $('.review_rating').barrating({
      theme: 'bootstrap-stars'
    });
};

export { initStarRating };