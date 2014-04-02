WildlifeTracker::Application.routes.draw do
  match('species', {:via => :get, :to => 'species#index'})
  match('species', {:via => :post, :to => 'species#create'})
  match('species/destroy', {:via => :get, :to => 'species#delete_list'})
  match('species/destroy', {:via => :post, :to => 'species#destroy'})
  match('species/:id', {:via => :get, :to => 'species#show'})
  match('species/:id', {:via => :post, :to => 'sightings#create'})
  match('species/:id/edit', {:via => :get, :to => 'species#edit'})
  match('species/:id/edit', {:via => :post, :to => 'species#edit'})
  match('sightings/:id/edit', {:via => :get, :to => 'sightings#edit'})
  match('sightings/:id/edit', {:via => :post, :to => 'sightings#edit'})
  match('sightings/:id/delete', {:via => :post, :to => 'sightings#destroy'})
end
