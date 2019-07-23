Rails.application.routes.draw do
  resources :projects do
    post '/employees', to: "projects#add_employee", as: 'add_employee'
    delete '/employees/:id', to: "projects#remove_employee", as: 'remove_employee'
  end
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
