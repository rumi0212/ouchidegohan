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
    resources :recipes, only: [:index]
    resources :customers, only: [:index, :show, :edit, :update]
    resources :stores, only: [:index, :show, :edit, :update] do
      resources :recipes, except: [:destroy]
    end
  end

  # 顧客用

  scope module: :public do
    resource :customers,only: [:edit,:update]
  end

  devise_for :customers,skip: [:passwords],controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  scope module: :public do
    root to: "homes#top"
    get "about" => "homes#about"
    resources :arrange_recipes, except: [:destroy]
    resources :stores,only: [:index,:show]

    resource :customers,only: [:show] do
      collection do
    	get 'quit'
    	patch 'out'
    	end
    end


    resources :recipes do
      resources :post_comments, only: [:create, :destroy]
      resources :bookmarks, only: [:create, :destroy]
      resource :favorites, only: [:create, :destroy]
      collection do
        get :bookmarks
      end
    end


    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
