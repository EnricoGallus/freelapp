import React from 'react';
import ReactDOM from 'react-dom';
import {BrowserRouter as Router, Route, Switch} from 'react-router-dom';

import BookGrid from "./books/BookGrid";
import BookDetailView from './book/BookDetailView'

const App = () => {
    return (
        <Router>
            <Switch>
                <Route exact path="/dashboard" component={BookGrid} />
                <Route exact path="/books/:slug" component={BookDetailView} />
            </Switch>
        </Router>
    );
}

document.addEventListener('turbolinks:load', () => {
    const app = document.getElementById('root')
    app && ReactDOM.render(
        <Router>
            <Route path="/" component={App}/>
        </Router>,
        app)
})