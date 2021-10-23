module Api
  module V1
    class BooksController < ApplicationController
      before_action :authenticate_user!
      before_action :set_book, only: %i[show update destroy]

      def index
        @books = Book.all
      end

      def show; end

      def create
        @book = Book.new(book_params)

        if @book.save
          format.json { render :show, status: :created, location: api_v1_book_path(@book) }
        else
          format.json { render json: @book.errors, status: :unprocessable_entity }
        end
      end

      def update
        if @book.update(book_params)
          format.json { render :show, status: :ok, location: api_v1_book_path(@book) }
        else
          format.json { render json: @book.errors, status: :unprocessable_entity }
        end
      end

      def destroy
        if @book.destroy
          format.json { head :no_content }
        else
          format.json { render json: @book.errors, status: :unprocessable_entity }
        end
      end

      private

      def book_params
        params.require(:book).permit(:name, :image_url)
      end

      def set_book
        @book = Book.find_by(slug: params[:slug])
      end
    end
  end
end
