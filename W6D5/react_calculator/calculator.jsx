import React from 'react';

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    this.state = {num1: "", num2: "", result: 0};
    this.sum = this.sum.bind(this);
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
    // console.log(num1, num2)
    this.setState({result: ans})
  }

  render() {
    return (
      <div>
        <h1>{this.state.result}</h1>
        <input type='text' onChange={this.changeInput1}></input>
        <input type='text' onChange={this.changeInput2}></input>
        <button className="button" onClick={this.sum}>
          HIT DA BUTTON
        </button>
      </div>
    );
  }
}

export default Calculator;
