class Book < ApplicationRecord
  belongs_to :authors
  belongs_to :nha_xuat_bans
  belongs_to :the_loais
end
