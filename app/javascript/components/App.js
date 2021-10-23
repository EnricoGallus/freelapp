import React from 'react';
import {Route, Switch} from "react-router-dom";
import Books from "./book/Books";

const App = () => {
    return (
        <Switch>
            <Route exact path="/" component={Books} />
            {/*<Route exact path="/books/:slug" component={Book} />*/}
        </Switch>);
}

export default App