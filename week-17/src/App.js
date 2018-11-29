import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import Box from './components/Box';

class App extends Component {
  constructor(props) {
    super(props);

    this.state = {
      boxes: [
        "Amazon Box",
        "Box from UPS",
        "Nordstrom!!!!",
      ],
    };

    this.onTextClick = this.onTextClick.bind(this);
  }

  onLogoClick(event) {
    console.log(event.target.alt);
  }

  onTextClick(event) {
    //console.log(event.target.text);
    console.log("This is: ", this);
  }

  render() {
    const boxComponents = this.state.boxes.map((str) => {
      return <Box
                text={str}
                onBoxClick = { () => this.onTextClick() }
            />;
    });

    return (
      <div className="App">
        <header className="App-header">
          <img
            src={logo}
            className="App-logo"
            alt="logo"
            onClick={this.onLogoClick}
          />

          {boxComponents}
        </header>
      </div>
    );
  }
}

export default App;
