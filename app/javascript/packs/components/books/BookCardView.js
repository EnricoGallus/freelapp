import React from 'react';
import { Link } from 'react-router-dom';

const BookCardView = (props) => {
    return (
        <div className="col">
            <div className="card">
                <img className="card-img-top" src={props.attributes.image_url} alt={props.attributes.name} />
                <div className="card-body">
                    <h5 className="card-title">{props.attributes.name}</h5>
                    <p className="card-text">{props.attributes.avg_score}</p>
                    <Link className="btn btn-primary" to={`/books/${props.attributes.slug}`}>View Book</Link>
                </div>
            </div>
        </div>
    )
}

export default BookCardView;