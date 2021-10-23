# test/controllers/api/v1/books_controller_spec.rb
require 'rails_helper'

RSpec.describe Api::V1::BooksController, type: :controller do

  describe 'Get #index' do
    fixtures :books

    before do
      allow(Book).to receive(:all).and_return(books(:one))
      get :index
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'Json body contains expected serialized attributes' do
      json_response = JSON.parse(response.body)
      expect(json_response['data']['attributes'].keys).to match_array(%w[name image_url slug])
    end
  end
end