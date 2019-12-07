class CarpoolGroupsController < ApplicationController
  def index
    @q = CarpoolGroup.ransack(params[:q])
    @carpool_groups = @q.result(:distinct => true).includes(:shared_rides, :users).page(params[:page]).per(10)

    render("carpool_group_templates/index.html.erb")
  end

  def show
    @shared_ride = SharedRide.new
    @carpool_group = CarpoolGroup.find(params.fetch("id_to_display"))

    render("carpool_group_templates/show.html.erb")
  end

  def new_form
    @carpool_group = CarpoolGroup.new

    render("carpool_group_templates/new_form.html.erb")
  end

  def create_row
    @carpool_group = CarpoolGroup.new


    if @carpool_group.valid?
      @carpool_group.save

      redirect_back(:fallback_location => "/carpool_groups", :notice => "Carpool group created successfully.")
    else
      render("carpool_group_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @carpool_group = CarpoolGroup.find(params.fetch("prefill_with_id"))

    render("carpool_group_templates/edit_form.html.erb")
  end

  def update_row
    @carpool_group = CarpoolGroup.find(params.fetch("id_to_modify"))


    if @carpool_group.valid?
      @carpool_group.save

      redirect_to("/carpool_groups/#{@carpool_group.id}", :notice => "Carpool group updated successfully.")
    else
      render("carpool_group_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @carpool_group = CarpoolGroup.find(params.fetch("id_to_remove"))

    @carpool_group.destroy

    redirect_to("/carpool_groups", :notice => "Carpool group deleted successfully.")
  end
end
