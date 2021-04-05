class NxbController < ApplicationController
    def view
        @nxb = NhaXuatBan.all
    end
end
