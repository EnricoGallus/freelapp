import React, { useState, useEffect, Fragment } from "react";
import HttpRequester from '../utils/HttpRequester';
import BookCardView from "./BookCardView";


const Books = () => {
    const [books, setBooks] = useState([]);

    useEffect(() => {
        HttpRequester(s => setBooks(s), 'books.json')
    }, [books.length]);

    const grid = books.map(item => {
        return (
            <BookCardView
                key={item.name}
                attributes={item}
            />)
    })

    return (
        <div>
            <div>
                <h1>Book review</h1>
                <div>Honest, unbiased book reviews.</div>
            </div>
            <div>{grid}</div>
        </div>
    )
}

export default Books