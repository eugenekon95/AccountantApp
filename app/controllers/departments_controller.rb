class DepartmentsController < ApplicationController
  def index
    @departments = Department.all
  end
  def new
    @department = Department.new
  end

  def edit

  end
  def create
    @department = Department.new(department_params)
  end

  def update
    @department.update(department_params)
  end

  private

  def set_department
    @department = Department.find(params[:id])
  end

  def department_params
    params.require(:department).permit(:name)
  end
end
