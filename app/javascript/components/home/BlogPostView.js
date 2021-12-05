import React from 'react';

const BlogPostView = (props) => {
    return (
        <div className="card">
            <img className="card-img-top" src={props.attributes.title} alt={props.attributes.name}/>
            <div className="card-body">
                <h5 className="card-title">{props.attributes.name}</h5>
                <p className="card-text">{props.attributes.title}</p>
                <a className="btn btn-primary" href={`/books/${props.attributes.title}`}>View Post</a>
            </div>
        </div>
    )
}

export default BlogPostView;