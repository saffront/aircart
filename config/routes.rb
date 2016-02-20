Rails.application.routes.draw do
  get 'posts/new'

devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :posts do
    member do
      put "like", to:    "links#upvote"
      put "dislike", to: "links#downvote"
    end
    resources :comments
  end
  resources :users do
    resource :profile
  end

    resources :contacts
  root 'home#index'

end
