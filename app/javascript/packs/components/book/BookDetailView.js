import React, { useState, useEffect, Fragment } from "react";
import HttpRequester from '../utils/HttpRequester';

const BookDetailView = (props) => {
    const [book, setBook] = useState([])
    const [loaded, setLoaded] = useState(false)

    useEffect(() => {
        const slug = props.match.params.slug
        HttpRequester(s => {
            setBook(s)
            setLoaded(true)
            }
            , `books/${slug}`)
    }, []);

    return (
        <div>
            {
                loaded &&
                    <Fragment>
                        <div>
                            {book.name}
                        </div>
                    </Fragment>
            }
        </div>
    )
}

export default BookDetailView