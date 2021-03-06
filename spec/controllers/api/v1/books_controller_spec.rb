# frozen_string_literal: true

# test/controllers/api/v1/books_controller_spec.rb
require 'rails_helper'

RSpec.describe Api::V1::BooksController, type: :controller do
  fixtures :books, :users
  describe 'Get #index' do
    before do
      sign_in users(:default)
      get :index, xhr: true
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end
  end
end
