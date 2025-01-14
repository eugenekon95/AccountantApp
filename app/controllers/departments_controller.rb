class DepartmentsController < ApplicationController
  before_action :set_department, only: [  :edit, :update, :show]
  def index
    @departments = Department.all
  end
  def new
    @department = Department.new
  end

  def edit

  end

  def show

  end

  def create
    @department = Department.new(department_params)
    if @department.save
      redirect_to @department, notice: 'Listing was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @department.update(department_params)
      redirect_to @department, notice: 'Department was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end


  private

  def set_department
    @department = Department.find(params[:id])
  end

  def department_params
    params.require(:department).permit(:name)
  end
end
