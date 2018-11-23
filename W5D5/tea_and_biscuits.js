const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function wantSomeFreakinTea(callback) {
  reader.question('Do you want tea', (res) => {
    first = res;
    console.log(`You replied ${res}.`);
    callback(first)
  });
}

function wantSomeFreakinBiscuits(first) {
  reader.question('Do you want biscuits', (res) => {
    second = res;
    console.log(`You replied ${res}.`);
    console.log(`So you ${first} want tea and you ${second} want biscuits.`);
  });
}

wantSomeFreakinTea(wantSomeFreakinBiscuits);
