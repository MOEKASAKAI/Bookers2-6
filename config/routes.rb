Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'devise/sessions',
  registrations: 'devise/registrations'
  }
  # ログインと新規登録の時の指定

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  resources :users, only: [:index, :show, :edit, :update]
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy] 
end
