class PreferredTripsController < ApplicationController
  def index
    @preferred_trips = PreferredTrip.all

    render("preferred_trip_templates/index.html.erb")
  end

  def show
    @preferred_trip = PreferredTrip.find(params.fetch("id_to_display"))

    render("preferred_trip_templates/show.html.erb")
  end

  def new_form
    @preferred_trip = PreferredTrip.new

    render("preferred_trip_templates/new_form.html.erb")
  end

  def create_row
    @preferred_trip = PreferredTrip.new

    @preferred_trip.origin = params.fetch("origin")
    @preferred_trip.destination = params.fetch("destination")
    @preferred_trip.earliest_departure_time = params.fetch("earliest_departure_time")
    @preferred_trip.latest_departure_time = params.fetch("latest_departure_time")
    @preferred_trip.date = params.fetch("date")
    @preferred_trip.max_radius = params.fetch("max_radius")
    @preferred_trip.user_id = params.fetch("user_id")
    @preferred_trip.join = params.fetch("join")

    if @preferred_trip.valid?
      @preferred_trip.save

      redirect_back(:fallback_location => "/preferred_trips", :notice => "Preferred trip created successfully.")
    else
      render("preferred_trip_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @preferred_trip = PreferredTrip.find(params.fetch("prefill_with_id"))

    render("preferred_trip_templates/edit_form.html.erb")
  end

  def update_row
    @preferred_trip = PreferredTrip.find(params.fetch("id_to_modify"))

    @preferred_trip.origin = params.fetch("origin")
    @preferred_trip.destination = params.fetch("destination")
    @preferred_trip.earliest_departure_time = params.fetch("earliest_departure_time")
    @preferred_trip.latest_departure_time = params.fetch("latest_departure_time")
    @preferred_trip.date = params.fetch("date")
    @preferred_trip.max_radius = params.fetch("max_radius")
    @preferred_trip.user_id = params.fetch("user_id")
    @preferred_trip.join = params.fetch("join")

    if @preferred_trip.valid?
      @preferred_trip.save

      redirect_to("/preferred_trips/#{@preferred_trip.id}", :notice => "Preferred trip updated successfully.")
    else
      render("preferred_trip_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_user
    @preferred_trip = PreferredTrip.find(params.fetch("id_to_remove"))

    @preferred_trip.destroy

    redirect_to("/users/#{@preferred_trip.user_id}", notice: "PreferredTrip deleted successfully.")
  end

  def destroy_row
    @preferred_trip = PreferredTrip.find(params.fetch("id_to_remove"))

    @preferred_trip.destroy

    redirect_to("/preferred_trips", :notice => "Preferred trip deleted successfully.")
  end
end
