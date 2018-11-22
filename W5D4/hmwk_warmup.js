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
