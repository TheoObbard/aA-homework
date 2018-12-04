import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  var store = configureStore(preloadedState);
  // store.dispatch = addLoggingToDispatch(store);
  store = applyMiddlewares(store, [addLoggingToDispatch]);
  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
});

// function addLoggingToDispatch(store) {
//   const dp = store.dispatch;
//   return function (action) {
//     console.log("before", store.getState());
//     console.log({action});
//     dp(action);
//     console.log("after", store.getState());
//   };
// }

const addLoggingToDispatch = store => next => action => {
  console.log("before", store.getState());
  console.log({action});
  store.dispatch(action);
  console.log("after", store.getState());
}

function applyMiddlewares(store, middlewares) {
  var dispatch = store.dispatch;
  for (var i = 0; i < middlewares.length; i++) {
    dispatch = middlewares[i](store)(dispatch);
  }
  return Object.assign({}, store, { dispatch });
}
