import React from 'react';

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    this.state = {num1: "", num2: "", result: 0};
    this.calculate = this.calculate.bind(this);
  }

  changeInput() {
    // handles logic of input change
  }

  calculate() {
    this.state.result = 
  }

  render() {
    return (
      <div>
        <h1>{this.state.result}</h1>
        <button className="button" onClick={this.calculate}>
          HIT DA BUTTON
        </button>
      </div>
    );
  }
}

export default Calculator;
