Rails.application.routes.draw do
  get '/' => 'lists#index'
  get 'lists/new' => 'lists#new'
  post 'lists/create' => 'lists#create'
  get 'lists/:id' => 'lists#show'
end
