Rails.application.routes.draw do
  get '/' => 'lists#index'
  get 'lists/new' => 'lists#new'
  post 'lists/create' => 'lists#create'
  get 'lists/:id' => 'lists#show'
  get 'lists/:id/edit' => 'lists#edit'
  post 'lists/:id/update' => 'lists#update'
end
