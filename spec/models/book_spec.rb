require 'rails_helper'

RSpec.describe Book, type: :model do
  fixtures :books

  it 'zero stars if no reviews' do
    expect(books(:no_review).calculate_average).to eq 0
  end
end
