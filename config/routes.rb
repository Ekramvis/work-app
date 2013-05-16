WorkApp::Application.routes.draw do

  root to: "teams#index"

  resources :employee_profiles

  resources :teams

  resources :employees do
    resources :employee_profiles, except: [:index]
  end

end
