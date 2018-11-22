// Write a function that takes three strings - a verb, an adjective,
// and a noun - uppercases and interpolates them into the sentence
// "We shall VERB the ADJECTIVE NOUN". Use ES6 template literals.

function adlib(verb, adjective, noun) {
  console.log(`We shall ${verb} the ${adjective} ${noun}`)
}

// adlib('run', 'blue', 'tree')

function isSubstring(subString, searchString) {
  if (searchString.includes(subString)) {
    return true;
  } else {
    return false;
  }
}

// console.log(isSubstring('fridge', 'refridgerator'));

function fizzBuzz(array) {
  for (var i = 0; i < array.length; i++) {
    if (array[i] % 3 === 0 && array[i] % 5 === 0) {
    console.log('Fizz Buzz');
    } else if (array[i] % 3 === 0) {
      console.log("fizz");
    } else if (array[i] % 5 === 0) {
      console.log('buzz');
    } else {
      console.log(array[i]);
    }
  }
}

// fizzBuzz([1, 2, 3, 4, 5, 6, 15, 8, 9, 10])

function isPrime(number) {
  let i = 2;
  while (i < number) {
    if (number % i === 0) {
      return false;
    }
    i += 1;
  }
  return true;
}

// console.log(isPrime(7));

function sumOfNPrimes(number) {
  let ans = 0;
  let counter = 1;
  let found = 0;
  while (found < number) {
    if (isPrime(counter)) {
      ans += counter
      found += 1;
    }
    counter += 1;
  }
  return ans
}

// console.log(sumOfNPrimes(1000));

function formalize(name) {
  return `Mx. ${name} the malevolent`
}

function titleize(names, callback) {
  for (var i = 0; i < names.length; i++) {
    console.log(callback(names[i]));
  }
}

// titleize(['Theo', 'Drew', 'Bruce'], formalize);

function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function () {
  return `${this.name} the Elephant goes 'phrRRRRRRRRRRR!!!!!!!'`
};

Elephant.prototype.grow = function () {
  this.height += 12;
};

Elephant.prototype.addTrick = function (trick) {
  this.tricks.push(trick)
};

Elephant.prototype.play = function () {
  return `${this.name} is ${this.tricks[Math.floor(Math.random() * this.tricks.length)]}`
};

Elephant.prototype.paradeHelper = function (elephant) {
  console.log(`${elephant.name} is trotting by!!!!`)
};

let micky = new Elephant('Micky', 154, ['chasing cars', 'juggling', 'cutting spinach'])

// console.log(micky.play());
// console.log(micky.trumpet());
// console.log(micky.height);
// console.log('growing...');
// console.log(micky.grow());
// console.log(micky.height);
// console.log(micky.play());

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

herd.forEach(Elephant.prototype.paradeHelper);
