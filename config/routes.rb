Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  root "homes#index"

  # get 'intellectual-property-rights', to: 'services#intellectual_property_rights'
  # get 'startup-advisory-and-compliance', to: 'services#startup_advisory_and_compliance'
  # get 'msme-litigation-and-compliance', to: 'services#msme_litigation_and_compliance'
  # # Add more routes as needed
  
  # # Catch-all route for all services using dynamic links
  # get 'services/:id', to: 'services#show', as: 'service'
  # 
  resources :services, only: [:index, :show], param: :slug
  resources :team_members, only: [:index]
end
