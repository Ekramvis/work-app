class EmployeeProfilesController < ApplicationController

  def show
  end

  def new
    @employee_profile = EmployeeProfile.new(employee_id: params[:employee_id])
  end

  def create
    @employee_profile = EmployeeProfile.new(params[:employee_profile])

    if @employee_profile.save
      redirect_to employee_profile_url(@employee_profile)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end
end