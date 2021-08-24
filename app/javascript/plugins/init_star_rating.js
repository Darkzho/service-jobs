import 'jquery-bar-rating';

const initStarRating = () => {
  $('#review_rating').barrating({
      theme: 'fontawesome-stars'
    });
};

export { initStarRating };