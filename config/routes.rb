Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "preferred_trips#index"
  # Routes for the Shared ride resource:

  # CREATE
  get("/shared_rides/new", { :controller => "shared_rides", :action => "new_form" })
  post("/create_shared_ride", { :controller => "shared_rides", :action => "create_row" })

  # READ
  get("/shared_rides", { :controller => "shared_rides", :action => "index" })
  get("/shared_rides/:id_to_display", { :controller => "shared_rides", :action => "show" })

  # UPDATE
  get("/shared_rides/:prefill_with_id/edit", { :controller => "shared_rides", :action => "edit_form" })
  post("/update_shared_ride/:id_to_modify", { :controller => "shared_rides", :action => "update_row" })

  # DELETE
  get("/delete_shared_ride/:id_to_remove", { :controller => "shared_rides", :action => "destroy_row" })
  get("/delete_shared_ride_from_carpool_group/:id_to_remove", { :controller => "shared_rides", :action => "destroy_row_from_carpool_group" })
  get("/delete_shared_ride_from_preferred_trip/:id_to_remove", { :controller => "shared_rides", :action => "destroy_row_from_preferred_trip" })
  get("/delete_shared_ride_from_user/:id_to_remove", { :controller => "shared_rides", :action => "destroy_row_from_user" })

  #------------------------------

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
  get("/delete_preferred_trip_from_user/:id_to_remove", { :controller => "preferred_trips", :action => "destroy_row_from_user" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
