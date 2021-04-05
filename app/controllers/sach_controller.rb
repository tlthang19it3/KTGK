class SachController < ApplicationController
    def view
        @book = Book.all
    end
end
