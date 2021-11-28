Rails.application.routes.draw do
  devise_for :users,
             path: "",
             path_names: {
               sign_in: "login",
               sign_out: "logout",
               registration: "registration",
               password: "password"
             },
             controllers: {
               passwords: "passwords",
               sessions: "sessions",
               registrations: "registrations"
             }
  resources :users
end
