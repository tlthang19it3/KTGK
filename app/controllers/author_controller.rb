class AuthorController < ApplicationController
    def view
        @author = Author.all
    end
end
