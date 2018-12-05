import { RECEIVE_SEARCH_GIPHYS } from '../actions/giphy_actions';

const initialState = []

const giphysReducer = (state = initialState, action) => {
  var resp = {};
  switch (action.type) {
    case RECEIVE_SEARCH_GIPHYS:
      resp = Object.assign({}, state);
      resp.giphys = action.giphys;
      return resp;
    default:
      return state;
  }
};

export default giphysReducer;
