Rails.application.routes.draw do
  resources :categories
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
    resources :comments
    member do
      post :add_to_cart
      put  :favorite
    end
    collection do
      get :search
    end
  end

  resources :favorite

  resources :carts do
    collection do
      delete :clean
      post   :checkout
      put   :discount
      put   :no_discount
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

  resources :cart_items do
    member do
      post :add_child_quantity
      post :remove_child_quantity
      post :add_adult_quantity
      post :remove_adult_quantity
    end
  end

  resources :notes

  root 'welcome#index'
end
