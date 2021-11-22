import React, {useState, useEffect, Fragment} from "react";
import PropTypes from "prop-types";

const BookCreationView = (props) => {
    const book = props.book

    return (
        <div>
            {
                <Fragment>
                    <div>
                        {book.name}
                    </div>
                </Fragment>
            }
        </div>
    )
}

BookCreationView.propTypes =
    {
        book: PropTypes.object
    }

export default BookCreationView