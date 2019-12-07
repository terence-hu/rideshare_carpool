Rails.application.routes.draw do
  # Routes for the Preferred trip resource:

  # CREATE
  get("/preferred_trips/new", { :controller => "preferred_trips", :action => "new_form" })
  post("/create_preferred_trip", { :controller => "preferred_trips", :action => "create_row" })

  # READ
  get("/preferred_trips", { :controller => "preferred_trips", :action => "index" })
  get("/preferred_trips/:id_to_display", { :controller => "preferred_trips", :action => "show" })

  # UPDATE
  get("/preferred_trips/:prefill_with_id/edit", { :controller => "preferred_trips", :action => "edit_form" })
  post("/update_preferred_trip/:id_to_modify", { :controller => "preferred_trips", :action => "update_row" })

  # DELETE
  get("/delete_preferred_trip/:id_to_remove", { :controller => "preferred_trips", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
