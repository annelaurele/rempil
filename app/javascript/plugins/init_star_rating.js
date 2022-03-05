import "jquery-bar-rating";

import $ from 'jquery';

const initStarRating = () => {
  $('#rating_rating').barrating({
    theme: 'css-stars'
  });
};

export { initStarRating };