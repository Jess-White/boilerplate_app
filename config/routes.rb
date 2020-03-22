Rails.application.routes.draw do
  namespace :api do

    post "/sessions" => "sessions#create"

    
    get '/bios' => 'bios#index'
    post '/bios' => 'bios#create'
    get '/bios/:id' => 'bios#show'
    patch '/bios/:id' => 'bios#update'
    delete '/bios/:id' => 'bios#destroy'

    get '/boilerplates' => 'boilerplates#index'
    post '/boilerplates' => 'boilerplates#create'
    get '/boilerplates/:id' => 'boilerplates#show'
    patch '/boilerplates/:id' => 'boilerplates#update'
    delete '/boilerplates/:id' => 'boilerplates#destroy'

    get '/categories' => 'categories#index'
    post '/categories' => 'categories#create'
    get '/categories/:id' => 'categories#show'
    patch '/categories/:id' => 'categories#update'
    delete '/categories/:id' => 'categories#destroy'

    get '/grants' => 'grants#index'
    post '/grants' => 'grants#create'
    get '/grants/:id' => 'grants#show'
    patch '/grants/:id' => 'grants#update'
    delete '/grants/:id' => 'grants#destroy'
    
    post '/grants/:id/copy' => 'grants#copy'

    get '/organizations' => 'organizations#index'
    post '/organizations' => 'organizations#create'
    get '/organizations/:id' => 'organizations#show'
    patch '/organizations/:id' => 'organizations#update'
    delete '/organizations/:id' => 'organizations#destroy'

    get '/sections' => 'sections#index'
    post '/sections' => 'sections#create'
    get '/sections/:id' => 'sections#show'
    patch '/sections/:id' => 'sections#update'
    delete '/sections/:id' => 'sections#destroy'

    get '/users' => 'users#index'
    post '/users' => 'users#create'
    get '/users/:id' => 'users#show'
    patch '/users/:id' => 'users#update'
    delete '/users/:id' => 'users#destroy'
  end 
end
