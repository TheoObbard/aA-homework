import React from 'react';

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    this.state = {num1: "", num2: "", result: 0};
    this.sum = this.sum.bind(this);
    this.subtract = this.subtract.bind(this);
    this.multiply = this.multiply.bind(this);
    this.divide = this.divide.bind(this);
    this.changeInput1 = this.changeInput1.bind(this);
    this.changeInput2 = this.changeInput2.bind(this);
  }

  changeInput1(e) {
    this.setState({num1: e.target.value})
  }

  changeInput2(e) {
    this.setState({num2: e.target.value})
  }

  sum() {
    let num1 = this.state.num1;
    let num2 = this.state.num2
    let ans = parseInt(num1) + parseInt(num2)
    this.setState({result: ans})
  }

  subtract() {
    let num1 = this.state.num1;
    let num2 = this.state.num2
    let ans = parseInt(num1) - parseInt(num2)
    this.setState({result: ans})
  }

  multiply() {
    let num1 = this.state.num1;
    let num2 = this.state.num2
    let ans = parseInt(num1) * parseInt(num2)
    this.setState({result: ans})
  }

  divide() {
    let num1 = this.state.num1;
    let num2 = this.state.num2
    let ans = parseInt(num1) / parseInt(num2)
    this.setState({result: ans})
  }

  render() {
    return (
      <div>
        <h1>{this.state.result}</h1>
        <input type='text' onChange={this.changeInput1}></input>
        <input type='text' onChange={this.changeInput2}></input>
        <br />
        <button className="button" onClick={this.sum}>
          +
        </button>
        <button className="button" onClick={this.subtract}>
          -
        </button>
        <button className="button" onClick={this.multiply}>
          *
        </button>
        <button className="button" onClick={this.divide}>
          /
        </button>
      </div>
    );
  }
}

export default Calculator;
