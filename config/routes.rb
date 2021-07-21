Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  patch '/referrals/:id/request', to: 'referrals#referral_request', as: :request
  patch '/referrals/:id/accept', to: 'referrals#accept', as: :accept
  patch '/referrals/:id/reject', to: 'referrals#reject', as: :reject

  resources :ties, only: [:show, :index] do
    resources :messages, only: [:create]
    collection do
      get :chat_list
    end
  end
  resources :referrals, only: [:create, :index]
  resources :users, only: [:show] do
    resources :user_interests, only: [:create]
  end
  resources :user_interests, only: [:destroy]
end
