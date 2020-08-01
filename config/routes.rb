Rails.application.routes.draw do
  get '/' => 'lists#index'
  get 'lists/new' => 'lists#new'
  get 'lists/:id' => 'lists#show'
  post 'lists/create' => 'lists#create'
  get 'lists/:id/edit' => 'lists#edit'
  post 'lists/:id/update' => 'lists#update'
  get 'lists/:id/destroy' => 'lists#destroy'
end
