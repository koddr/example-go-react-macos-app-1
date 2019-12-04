// Import React and React Hooks
import React, { useState, useEffect } from "react";

// Import axios
import axios from "axios";

// Import logo and CSS
import logo from "./logo.svg";
import "./App.css";

function App() {
  // Define storage for data
  const [state, setState] = useState([]);

  // Retrieving data from an AJAX request.
  // Remember that the function passed to useEffect will run,
  // after render is fixed on the screen.
  // See https://reactjs.org/docs/hooks-reference.html#useeffect
  useEffect(() => {
    axios
      .get("/hello") // GET request to URL /hello
      .then(resp => setState(resp.data)) // save response to state
      .catch(err => console.log(err)); // catch error
  });

  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>Hello, {state.text}!</p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
}

export default App;
