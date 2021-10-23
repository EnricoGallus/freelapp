class BookReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :score
end
