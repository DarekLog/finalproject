import React, { Component } from 'react';
/* import axios from './axios'; */
/* import { Link } from 'react-router-dom'; */

class Preview extends Component {
    constructor(props) {
        super(props);
        this.state = {};
    }

    render() {
        return (
            <div className="preview">
                Preview
                <div><img src="../resume1.png" /></div>

            </div>
        )
    }
}

export default Preview;
