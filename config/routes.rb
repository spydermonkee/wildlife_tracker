WildlifeTracker::Application.routes.draw do
  match('species', {:via => :get, :to => 'species#index'})
  match('species', {:via => :post, :to => 'species#create'})
  match('species/:id', {:via => :get, :to => 'species#show'})
  match('sightings', {:via => :post, :to => 'sightings#create'})
end
