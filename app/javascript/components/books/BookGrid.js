import React, { useState, useEffect, Fragment } from "react";
import HttpRequester from '../utils/HttpRequester';
import BookCardView from "../home/BookCardView";

const BookGrid = () => {
    const [books, setBooks] = useState([]);

    useEffect(() => {
        HttpRequester(s => setBooks(s), 'books')
    }, [books.length]);

    const grid = books.map(item => {
        return <BookCardView key={item.name} attributes={item} />
    })

    return (
        <Fragment>
            <h1>Book review</h1>
            <h5>Honest, unbiased book reviews.</h5>
            <div className="row row-cols-1 row-cols-md-3 g-4">{grid}</div>
        </Fragment>
    )
}

export default BookGrid