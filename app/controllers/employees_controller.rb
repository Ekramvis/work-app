class EmployeesController < ApplicationController

  def new
    @employee = Employee.new
    @employees = Employee.includes(:employee_profile).all
    @teams = Team.all
  end

  def create
    @employee = Employee.new(params[:employee])

    if @employee.save
      redirect_to employee_url(@employee)
    else
      @teams = Team.all
      @employees = Employee.includes(:employee_profiles).all
      render :new
    end
  end

  def edit
    @employee = Employee.includes(:employee_profiles).find(params[:id])
    @employees = Employee.includes(:employee_profiles).all
    @teams = Team.all
  end

  def update
    @employee = Employee.find(params[:id])

    if @employee.update_attributes(params[:employee])
      redirect_to employee_url(@employee)
    else
      @teams = Team.all
      @employees = Employee.includes(:employee_profiles).all
      render :edit
    end
  end

  def index
    @employees = Employee.includes(:employee_profiles).all
  end

  def show
    @employee = Employee.includes(:employee_profiles).find(params[:id])
  end

end