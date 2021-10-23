import React, { useState, useEffect, Fragment } from "react";
import axios from "axios";
import BookCardView from "./BookCardView";


const Books = () => {
    const [books, setBooks] = useState([]);

    useEffect(() => {
        axios.get('/api/v1/books.json')
            .then(resp => {
                setBooks(resp.data.data);
            })
            .catch(resp => console.log(resp));
    }, [books.length]);

    const grid = books.map(item => {
        return (
            <BookCardView
                key={item.attributes.name}
                attributes={item.attributes}
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