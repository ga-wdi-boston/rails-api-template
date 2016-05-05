Rails.application.routes.draw do

  resources :stories, except: [:new, :edit]
  resources :examples, except: [:new, :edit]

  # get '/stories' => 'stories#index'
  get '/stories/index' => 'stories#showindex'
  # post '/stories' => 'stories#create'
  # get '/stories/:id' => 'stories#show'
  # patch '/stories/:id' => 'stories#update'
  # delete '/stories/:id' => 'stories#destroy'

  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'

  get '/users/:id' => 'users#show'
  get '/users' => 'users#index'
  resources :users, only: [:index, :show]

end
