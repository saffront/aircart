Rails.application.routes.draw do
  get 'posts/new'
  get '/about' => 'home#about'

devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :posts do
    member do
      put "like", to:    "posts#upvote"
      put "dislike", to: "posts#downvote"
    end
    resources :comments
  end
  resources :users do
    resource :profile
  end

    resources :contacts
  root 'home#index'

end
