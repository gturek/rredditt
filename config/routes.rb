Rails.application.routes.draw do
  
  devise_for :users
  resources :links do
  	member do
  		put "like", 	to: "link#upvote"
  		put "dislike", 	to: "link#downvote"
  	end
  end

  root to: "links#index"
end
