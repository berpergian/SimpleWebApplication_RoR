Rails.application.routes.draw do
  # Root
  root to: "homepage#index"

  devise_for :users
  devise_for :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
