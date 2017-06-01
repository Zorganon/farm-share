import React from 'react'
import ReactDOM from 'react-dom'

class Welcome extends React.Component {
  render() {
    return <h1> {this.props.title} </h1>
  }
}

export default Welcome;