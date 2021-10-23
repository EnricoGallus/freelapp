import React from 'react';
import { BrowserRouter as Router, Link } from 'react-router-dom';

const BookCardView = (props) => {
    return (
        <div>
            <div>
                <img src={props.attributes.image_url} alt={props.attributes.name} />
            </div>
            <div>{props.attributes.name}</div>
            <div>{props.attributes.avg_score}</div>
            <div>
                <Link to={`/airlines/${props.attributes.slug}`}>View Airline</Link>
            </div>
        </div>
    )
}

export default BookCardView;