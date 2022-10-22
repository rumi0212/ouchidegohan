Rails.application.routes.draw do
  
  # 管理者用
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions",
    passwords: "admin/passwords",
    registrations: "admin/registrations"
  }

  namespace :admin do
    resources :recipes, except: [:destroy]
    
  end

  # 顧客用
  devise_for :customers,skip: [:passwords],controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  
  scope module: :public do
    root to: "homes#top"
    get "about" => "homes#about"
    resources :arrange_recipes, except: [:destroy]
    
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
