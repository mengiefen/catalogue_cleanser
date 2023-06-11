# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :actions
  resources :product_duplicates
  resources :products
  resources :abbreviations
  resources :dictionary_entries
  resources :brand_aliases
  resources :brands
  resources :item_packs_aliases
  resources :item_packs
  resources :item_measures_aliases
  resources :item_measures
  resources :item_sell_pack_aliases
  resources :item_sell_packs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
