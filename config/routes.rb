Rails.application.routes.draw do
  get '/' => 'lists#index'
  get 'lists/new' => 'lists#new'
  get 'lists/:id' => 'lists#show'
end
