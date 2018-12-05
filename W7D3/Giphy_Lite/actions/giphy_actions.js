import * as APIUtil from '../util/api_util';

const RECEIVE_SEARCH_GIPHYS = 'RECEIVE_SEARCH_GIPHYS';
const REQUEST_SEARCH_GIPHYS = 'REQUEST_SEARCH_GIPHYS';

const receiveSearchGiphys = giphys => {
  return {
    type: RECEIVE_SEARCH_GIPHYS,
    giphys
  }
};

// Returns a function that can be called with dispatch and uses
// a promise to dispatch receiveSearchGiphys with the received
// data after APIUtil.fetchSearchGiphys is successful.
const fetchSearchGiphys = searchTerm => {
	return (dispatch) => {
		APIUtil.fetchSearchGiphys(searchTerm)
			.then(giphys => dispatch(receiveSearchGiphys(giphys.data)));
	}
};

export default { fetchSearchGiphys, RECEIVE_SEARCH_GIPHYS, REQUEST_SEARCH_GIPHYS, receiveSearchGiphys};
