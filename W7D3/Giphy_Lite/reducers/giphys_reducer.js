import { RECEIVE_SEARCH_GIPHYS } from '../actions/giphy_actions';

const initialState = []

const giphysReducer = function(state = initialState, action) {
  switch (action.type) {
    case RECEIVE_SEARCH_GIPHYS:
      return action.giphys;
    default:
      return state;
  }
};

export default giphysReducer;
