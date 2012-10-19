Picmarks::Application.routes.draw do
  
  get "/pictures", :controller => 'pictures', :action => 'index'
  
  get "/pictures/new", :controller => 'pictures', :action => 'new'
  post "/pictures", :controller => 'pictures', :action => 'create'

  get "/pictures/delete/:id", :controller => 'pictures', :action => 'delete'

  get "/pictures/:id", :controller => 'pictures', :action => 'show'
  
  get "/pictures/edit/:id", :controller => 'pictures', :action => 'edit'
  post "/pictures/edit/:id", :controller => 'pictures', :action => 'update_record'
end