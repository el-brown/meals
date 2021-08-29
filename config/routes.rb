Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # When you receive this request, route it here


  root 'dinner#index'
  get '/dinners', to:'dinner#index'
  get '/dinners/new', to:'dinner#new'
  post '/dinners', to:'dinner#create'
  get '/dinners/:id/edit', to:'dinner#edit'
  patch '/dinners/:id', to:'dinner#update'


  delete '/dinners/:id', to:'dinner#destroy'

  
  get '/dinners/:dinner_id/recipes', to: 'recipe#index'
end