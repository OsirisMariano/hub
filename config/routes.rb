# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  namespace :administrate do
    resources :docs
  end

  #get "welcome/index"
  #root "docs#index", as: "authenticated_root"

  root "welcome#index"
end
