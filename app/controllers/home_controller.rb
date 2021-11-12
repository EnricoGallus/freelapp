class HomeController < ApplicationController
  def index
    @latest_book_review = Book.all.order(created_at: :desc).limit(5)
  end

  def terms; end

  def privacy; end
end
