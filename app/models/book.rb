class Book < ApplicationRecord
  has_many :book_reviews

  # Slugify book name into a url safe param before create
  # Ex: 'Alice in Wonderland'.parameterize => 'alice-in-wonderland'
  before_create lambda { |book|
    book.slug = book.name.parameterize
  }

  # Get the average score of all reviews
  def calculate_average
    return 0 if book_reviews.empty?

    avg = book_reviews.average(:score).to_f.round(2) * 100
    update_column(:average_score, avg)
  end
end
