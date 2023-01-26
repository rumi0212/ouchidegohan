Rails.application.routes.draw do

  # 管理者用
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions",
    passwords: "admin/passwords",
    registrations: "admin/registrations"
  }

  namespace :admin do
    root to: "homes#top"
    resources :categories, only: [:index, :create, :edit, :update]
    resources :recipes, except: [:destroy, :new ,:create]
    resources :customers, only: [:index, :show, :edit, :update]
    resources :stores, except: [:destroy] do
      resources :recipes, only: [:new, :create]
        member do
          get :recipes
        end

    end
  end

  # 顧客用

  devise_for :customers,skip: [:passwords],controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  scope module: :public do
    root to: "homes#top"
    get "about" => "homes#about"
    resources :arrange_recipes, except: [:destroy, :new ,:create]
    resources :stores, only: [:index,:show]

    resources :customers, only: [:show,:edit,:update] do
      collection do
    	get 'quit'
    	patch 'out'
    	end
    end


    resources :recipes, only: [:index, :show] do
      resources :arrange_recipes, only: [:new, :create]
      member do
        get :arrange_recipes
      end
      resources :post_comments, only: [:create, :destroy, :show]
      resources :bookmarks, only: [:create, :destroy]
      resource :favorites, only: [:create, :destroy]
      collection do
        get :bookmarks
      end
    end


    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
