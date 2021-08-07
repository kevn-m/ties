Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  patch '/referrals/:id/request', to: 'referrals#referral_request', as: :request
  patch '/referrals/:id/accept', to: 'referrals#accept', as: :accept
  patch '/referrals/:id/reject', to: 'referrals#reject', as: :reject

  get '/edit_profile', to: 'users#edit_profile', as: :edit_profile
  get '/edit_photos', to: 'users#edit_photos', as: :edit_photos
  patch '/update_photos', to: 'users#update_photos', as: :update_photos
  delete '/delete_photo/:id', to: 'users#delete_photo', as: :delete_photo
  patch '/update_profile/:id', to: 'users#update_profile', as: :update_profile
  patch '/update_interests/:id', to: 'users#update_interests', as: :update_interests

  resources :ties, only: [:show, :index] do
    resources :messages, only: [:create]
    collection do
      get :chat_list
    end
  end
  resources :referrals, only: [:new, :create, :index]
  resources :users, only: [:show] do
    resources :user_interests, only: [:create, :index]
  end
  resources :user_interests, only: [:destroy]
end
