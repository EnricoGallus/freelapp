class HomeController < ApplicationController
  def index
    @latest_books = Book.all.order(created_at: :desc).limit(5)
    @latest_blog_posts = Post.all.order(created_at: :desc).limit(5)
  end

  def terms; end

  def privacy; end
end
