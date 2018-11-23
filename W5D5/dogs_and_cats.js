function Cat () {
  this.name = 'Markov';
  this.age = 3;
}

function Dog () {
  this.name = 'Noodles';
  this.age = 4;
}

Dog.prototype.chase = function (cat) {
  console.log(`My name is ${this.name} and I'm chasing ${cat.name}! Woof!`)
};

const Markov = new Cat ();
const Noodles = new Dog ();

// Noodles.chase(Markov);
// Markov.chase(Noodles); //errors out because chase is on dog class

Noodles.chase.call(Markov, Noodles) //makes cat chase dog using dog chase class method
