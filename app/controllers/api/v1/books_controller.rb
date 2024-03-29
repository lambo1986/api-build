class Api::V1::BooksController < ApplicationController
  def index
    render json: Book.all
  end

  def show
    render json: Book.find(params[:id])
  end

  def create
    render json: Book.create(book_params)
  end

  def update
    render json: Book.find(params[:id]).update(book_params)
  end

  def destroy
    render json: Book.find(params[:id]).destroy
  end
end

private

def book_params
  params.require(:book).permit(:title, :author, :summary, :genre, :number_sold)
end
