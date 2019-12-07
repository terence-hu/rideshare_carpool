Rails.application.routes.draw do
  # Routes for the Carpool group resource:

  # CREATE
  get("/carpool_groups/new", { :controller => "carpool_groups", :action => "new_form" })
  post("/create_carpool_group", { :controller => "carpool_groups", :action => "create_row" })

  # READ
  get("/carpool_groups", { :controller => "carpool_groups", :action => "index" })
  get("/carpool_groups/:id_to_display", { :controller => "carpool_groups", :action => "show" })

  # UPDATE
  get("/carpool_groups/:prefill_with_id/edit", { :controller => "carpool_groups", :action => "edit_form" })
  post("/update_carpool_group/:id_to_modify", { :controller => "carpool_groups", :action => "update_row" })

  # DELETE
  get("/delete_carpool_group/:id_to_remove", { :controller => "carpool_groups", :action => "destroy_row" })

  #------------------------------

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
