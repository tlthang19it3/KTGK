class TheloaiController < ApplicationController
    def view
        @tl = TheLoai.all
    end
end
