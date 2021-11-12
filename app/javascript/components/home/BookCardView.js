import React from 'react';

const BookCardView = (props) => {
    return (
        <div className="card">
            <img className="card-img-top" src={props.attributes.image_url} alt={props.attributes.name}/>
            <div className="card-body">
                <h5 className="card-title">{props.attributes.name}</h5>
                <p className="card-text">{props.attributes.avg_score}</p>
                <a className="btn btn-primary" href={`/books/${props.attributes.slug}`}>View Book</a>
            </div>
        </div>
    )
}

export default BookCardView;