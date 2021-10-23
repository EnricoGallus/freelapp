import React from 'react';
import ReactDOM from 'react-dom';
import {BrowserRouter as Router, Route, Switch} from 'react-router-dom';

import Books from "./book/Books";

const App = () => {
    return (
        <Switch>
            <Route exact path="/dashboard" component={Books} />
            {/*<Route exact path="/books/:slug" component={Book} />*/}
        </Switch>);
}

document.addEventListener('turbolinks:load', () => {
    const app = document.getElementById('root')
    app && ReactDOM.render(
        <Router>
            <Route path="/dashboard" component={App}/>
        </Router>,
        app)
})