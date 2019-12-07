class SharedRidesController < ApplicationController
  def index
    @shared_rides = SharedRide.all

    render("shared_ride_templates/index.html.erb")
  end

  def show
    @shared_ride = SharedRide.find(params.fetch("id_to_display"))

    render("shared_ride_templates/show.html.erb")
  end

  def new_form
    @shared_ride = SharedRide.new

    render("shared_ride_templates/new_form.html.erb")
  end

  def create_row
    @shared_ride = SharedRide.new

    @shared_ride.user_id = params.fetch("user_id")
    @shared_ride.preferred_trip_id = params.fetch("preferred_trip_id")
    @shared_ride.carpool_group_id = params.fetch("carpool_group_id")

    if @shared_ride.valid?
      @shared_ride.save

      redirect_back(:fallback_location => "/shared_rides", :notice => "Shared ride created successfully.")
    else
      render("shared_ride_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_preferred_trip
    @shared_ride = SharedRide.new

    @shared_ride.user_id = params.fetch("user_id")
    @shared_ride.preferred_trip_id = params.fetch("preferred_trip_id")
    @shared_ride.carpool_group_id = params.fetch("carpool_group_id")

    if @shared_ride.valid?
      @shared_ride.save

      redirect_to("/preferred_trips/#{@shared_ride.preferred_trip_id}", notice: "SharedRide created successfully.")
    else
      render("shared_ride_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_carpool_group
    @shared_ride = SharedRide.new

    @shared_ride.user_id = params.fetch("user_id")
    @shared_ride.preferred_trip_id = params.fetch("preferred_trip_id")
    @shared_ride.carpool_group_id = params.fetch("carpool_group_id")

    if @shared_ride.valid?
      @shared_ride.save

      redirect_to("/carpool_groups/#{@shared_ride.carpool_group_id}", notice: "SharedRide created successfully.")
    else
      render("shared_ride_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @shared_ride = SharedRide.find(params.fetch("prefill_with_id"))

    render("shared_ride_templates/edit_form.html.erb")
  end

  def update_row
    @shared_ride = SharedRide.find(params.fetch("id_to_modify"))

    
    @shared_ride.preferred_trip_id = params.fetch("preferred_trip_id")
    @shared_ride.carpool_group_id = params.fetch("carpool_group_id")

    if @shared_ride.valid?
      @shared_ride.save

      redirect_to("/shared_rides/#{@shared_ride.id}", :notice => "Shared ride updated successfully.")
    else
      render("shared_ride_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_user
    @shared_ride = SharedRide.find(params.fetch("id_to_remove"))

    @shared_ride.destroy

    redirect_to("/users/#{@shared_ride.user_id}", notice: "SharedRide deleted successfully.")
  end

  def destroy_row_from_preferred_trip
    @shared_ride = SharedRide.find(params.fetch("id_to_remove"))

    @shared_ride.destroy

    redirect_to("/preferred_trips/#{@shared_ride.preferred_trip_id}", notice: "SharedRide deleted successfully.")
  end

  def destroy_row_from_carpool_group
    @shared_ride = SharedRide.find(params.fetch("id_to_remove"))

    @shared_ride.destroy

    redirect_to("/carpool_groups/#{@shared_ride.carpool_group_id}", notice: "SharedRide deleted successfully.")
  end

  def destroy_row
    @shared_ride = SharedRide.find(params.fetch("id_to_remove"))

    @shared_ride.destroy

    redirect_to("/shared_rides", :notice => "Shared ride deleted successfully.")
  end
end
