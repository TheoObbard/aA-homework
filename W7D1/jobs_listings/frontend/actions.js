// Open frontend/actions.js. This is where our app's action creators
//  will live. Let's define and export a selectLocation function
//  that takes as arguments a city string and a jobs array. It returns
//  an action (i.e. a POJO, plain old javascript object) with the
//  following keys and values:

function selectLocation(city, jobs) {
  return {
    type: "SWITCH_LOCATION",
    city: "Austin",
    jobs: ["github", "eBay"]
  };
}

// window.selectLocation = selectLocation

export default selectLocation;
