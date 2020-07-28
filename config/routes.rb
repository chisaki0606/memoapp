Rails.application.routes.draw do
  get '/' => 'lists#index'
  get 'lists/:id' => 'lists#show'
end
