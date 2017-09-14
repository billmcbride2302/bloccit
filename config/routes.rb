Rails.application.routes.draw do

  post 'users/confirm' => 'users#confirm'

  # resources :topics do
  #    resources :posts, except: [:index]
  #    resources :sponsored_posts, except: [:index]
  #  end

  #  resources :posts do
  #    resources :comments, only: [:create, :destroy]
  #    post '/up-vote' => 'votes#up_vote', as: :up_vote
  #    post '/down-vote' => 'votes#down_vote', as: :down_vote
  #  end
  resources :topics
  resources :questions
  resources :advertisements 
  resources :users, only: [:new, :create, :show]
  resources :sponsored_posts, only: [:new, :edit, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :posts
  resources :favorites, only: [:create, :destroy]
  resources :comments, only: [:show]
  resources :votes, only: [:show]



  resources :topics do
    resources :posts, except: [:index]
  end

  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy]
    resources :favourites, only: [:create, :destroy]

    post '/up-vote' => 'votes#up_vote', as: :up_vote
    post '/down-vote' => 'votes#down_vote', as: :down_vote
  end


  # resources :topics 
  resources :questions
  resources :advertisements 
  resources :users, only: [:new, :create, :show]
  resources :sponsored_posts, only: [:new, :edit, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :posts, only: [:new, :create, :show, :destroy]
  resources :favorites, only: [:create, :destroy]
  resources :comments, only: [:show]
  resources :votes, only: [:show]
  

  get 'about' => 'welcome#about'

  root 'welcome#index'
end
