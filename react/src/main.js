import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';
import Index from './index/Index'

$(function() {
  ReactDOM.render(
    <Index />,
    document.getElementById('react-index')
  );
});

$(function() {
  ReactDOM.render(
    <Show />,
    document.getElementById('react-show')
  );
});
