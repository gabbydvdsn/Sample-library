class BooksController < ApplicationController
    def new
        @book = Book.new
    end

    def input
        params.require(:books).permit(:author, :title, :genre, :cdn)
    end

    def create
        @book = Book.new(input)
            
        if @book.save
            redirect_to :action => 'index', :controller => 'home'
        else
            render :action => 'create'
        end
            
    end
end
