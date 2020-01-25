Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_for :users, controllers: { registrations: "users/registrations",sessions: "users/sessions" }

  root 'rooms#index'
  # 次の一行を追加
  resources :messages, only: :create

end
