class BooksController < ApplicationController
  def index

    @books = Book.all
  end
  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(subject_params)

    if @book.save
      flash[:notice] = "Book record created succesfully."
      redirect_to(books_path)
    else
      render('new')
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update_attributes(subject_params)
      flash[:notice] = "Book record updated succesfully."
      redirect_to(books_path(@book))
    else
      render('edit')
    end
  end

  def delete
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice] = "Book record deleted succesfully."
    redirect_to(books_path)
  end

  private
  def subject_params
    params.require(:book).permit(:title,:author,:genre,:price,:date)
  end

end
