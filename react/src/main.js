import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';
import Index from './index/Index'

$(function() {
  if ($('#react-index').length) {
    ReactDOM.render(
      <Index />,
      document.getElementById('react-index')
    );
  }
});
