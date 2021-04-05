Rails.application.routes.draw do
  get "/sach" => "sach#view"
  get "/tac-gia" => "author#view"
  get "/the-loai" => "theloai#view"
  get "/nha-xuat-ban" => "nxb#view"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
