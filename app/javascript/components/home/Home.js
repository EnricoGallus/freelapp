import React, {Fragment} from "react"
import PropTypes from "prop-types"
import BookCardView from "./BookCardView";

const Home = (props) => {
    const grid = props.latest_book_review.map(item => {
        return <BookCardView key={item.name} attributes={item} />
    })

    return (
        <Fragment>
            <section id="home_introduction" className="fullScreenJumbo" style={{backgroundColor: 'green'}}>
                <div className="jumbotron">
                    <h1 className="display-5 fw-bold">Awesome blog of a common developer.</h1>
                    <h3>Made in Ruby on Rails, React and Bootstrap.</h3>
                    <hr className="my-4"/>
                    <p className="lead">In case you would like to <a href="https://www.enchan.org"
                                                                     className="refererLink">discover
                        more</a> about me</p>
                    <p className="lead text-right">Find a rare selection of the <a href="#latestPosts"
                                                                                   className="refererLink">latest
                        blogs</a> or
                    </p>
                    <p className="lead">check out <a href="#latestBookReviews" className="refererLink">books</a> i read</p>
                    <p className="lead text-center">Whatever you should decide for, it is a pleasure to have you
                        here.</p>
                </div>
            </section>
            <section id="latestBookReviews" className="fullScreenJumbo" style={{backgroundColor: 'blue'}}>
                <div className="jumbotron">
                    <h1 className="display-5 fw-bold">Latest read of mine</h1>
                    <h3>Including reviews</h3>
                    <hr className="my-4"/>
                    <div className="card-group">
                        {grid}
                    </div>
                </div>
            </section>
            <section id="purpose" className="fullScreenJumbo" style={{backgroundColor: 'black'}}>
                <div className="jumbotron">
                    <h1 className="display-5 fw-bold">Purpose of this Blog.</h1>
                    <h3>There are already so many more Blog's out there and again one more.</h3>
                    <hr className="my-4"/>
                    <div className="text-center">
                        <p className="lead">There are indeed!</p>
                        <p className="lead">And to be honest, it would have been so much easier and definitely
                            faster to
                            create a blog with Wordpress or just post to Medium. Besides, I was never good at
                            writing.
                            When I tried to write a book, I failed completely. I am not a native English speaker
                            either,
                            so writing English is not the easiest thing in the world for me.</p>
                        <p className="lead">As a software developer I spend most of the day in front of the screen
                            tackling
                            against problems and
                            searching for solutions. Especially as a software developer, it's not like fantastic,
                            extraordinary things happen in my life every day. </p>
                        <p className="lead">"So why the heck this blog than?" is what you are going to ask yourself
                            right now, aren't you?</p>
                        <p className="lead">For all the above reasons. I love challenges and want to improve in the
                            things I am
                            not so good at.
                            Usually I'm not a fan of reinventing the wheel, but this blog is something else.
                            My wife has hung a picture above my computer that says:</p>
                        <blockquote className="blockquote">
                            <p className="mb-0">Life is like a bicycle. To keep your balance you must keep
                                moving.</p>
                            <footer className="blockquote-footer">Albert Einstein</footer>
                        </blockquote>
                    </div>
                </div>
            </section>
        </Fragment>
    );
}

Home.propTypes =
    {
        latest_book_review: PropTypes.array
    }

export default Home