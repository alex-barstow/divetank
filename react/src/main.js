import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';
import Index from './index/Index';
import Show from './show/Show';
import {Chart} from 'react-google-charts';

$(function() {
  if ($('#react-index').length) {
    ReactDOM.render(
      <Index />,
      document.getElementById('react-index')
    );
  } else if ($('#react-show').length) {

    ReactDOM.render(
      <Show id={window.location.href.split("/")[4]} />,
      document.getElementById('react-show')
    );
  }
});
