Rails.application.routes.draw do
  resources :examples, except: [:new, :edit]
  resources :surfboards, except: [:new, :edit, :update]
  # get '/surfboards/user_id/:id' => 'surfboards#index'
  resources :sessions, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  get '/charts' => 'forecasts#swell'
  resources :users, only: [:index, :show]
end
