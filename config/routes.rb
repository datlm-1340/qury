Rails.application.routes.draw do
  devise_for :users, skips: :all

  devise_scope :user do
    post "login" => "sessions#create"
    delete "logout" => "sessions#destroy"
    post "register" => "registrations#create"
  end

  root "home#index"
end
