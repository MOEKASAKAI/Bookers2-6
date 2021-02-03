Rails.application.routes.draw do
  get 'users/edit' # 削除/書き換えが必要
  devise_for :users, controllers: {
    sessions: 'devise/sessions',
  registrations: 'devise/registrations'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  resources :users, only: [:show, :edit, :update]
end
