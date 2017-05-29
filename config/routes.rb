Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :products
    resources :orders do
      member do
        post :cancel
        post :reserve     #预定行程-->  ship
        post :start       #开始行程-->  shipped
        post :end         #结束行程-->  return
      end
    end
  end

  resources :products do
    member do
      post :add_to_cart
    end
    collection do
      get :search
    end
  end

  resources :carts do
    collection do
      delete :clean
      post   :checkout
    end
  end

  namespace :account do
    resources :orders
  end

  resources :orders do
    member do
      post :pay_with_wechat
      post :pay_with_alipay
      post :apply_to_cancel
    end
  end

  resources :cart_items

  root 'products#index'
end
