import "jquery-bar-rating";

import $ from 'jquery';

const initStarRating = () => {
  $('.etoile').barrating({
    theme: 'css-stars'
  });
};

export { initStarRating };