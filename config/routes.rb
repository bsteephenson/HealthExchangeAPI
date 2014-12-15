Rails.application.routes.draw do
  
  get "/search/:state/:area", to: "plans#search"
  get "/plan/:id", to: "plans#details"


end
