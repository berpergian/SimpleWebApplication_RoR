Rails.application.routes.draw do
  # Root
  root to: "homepage#index"

  # API Site
  constraints subdomain: 'api' do
    mount Twitter::Root => '/'

    unless Rails.env.production?
      mount GrapeSwaggerRails::Engine => '/:version/docs'
    end
  end

  # Users Site
  devise_for :users
  namespace :users do
    root to: "users#index"
  end

  # Admins Site
  devise_for :admins
  namespace :admins do
    root to: "admins#index"
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
