import React from 'react';
import {
    render
} from 'react-dom';
import { HashRouter, Route } from 'react-router-dom';
import Personal from './personal';
import Education from './education';
import Experience from './experience';
import Skills from './skills';
import Languages from './languages';




export default function Content() {

    return (
        <div className="sections-container">
            <Logo />
            <HashRouter>
                <div className="content-comp">
                    <Route exact path='/personal' component={Personal} />
                    <Route exact path='/experience' component={Experience} />
                    <Route exact path='/education' component={Education} />
                    <Route exact path='/skills' component={Skills} />
                    <Route exact path='/languages' component={Languages} />

                </div>
            </HashRouter>
            <div className="preview">
                {
                    (this.state.id > 0) &&
                    <p><Link to={`/user/${this.state.id - 1}`}>Show prev friend</Link></p>
                }
                {
                    (this.state.id < this.state.num) &&
                    <p><Link to={`/user/${this.state.id + 1}`}>Show next friend</Link></p>
                }
            </div>
        </div>
    )
}
