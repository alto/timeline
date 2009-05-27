ActionController::Routing::Routes.draw do |map|
  
  map.resources :milestones
  
  map.root    :controller => "milestones"
  # map.connect ':controller/:action/:id'
  # map.connect ':controller/:action/:id.:format'
end
