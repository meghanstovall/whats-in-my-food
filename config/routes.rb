Rails.application.routes.draw do
  root "welcome#index"

  get '/foods', to: 'foods#index'

  # DLC23azsNS8JYg1Gj5EjvQj0yi2SowuLuLrvWR2l
end
