class EmployeeSalaryRecordsController < ApplicationController
  before_action :set_employee
  before_action :set_salary_record, only: [:edit, :update, :destroy]

  def index
    @salary_records = @employee.employee_salary_records
  end

  def new
    @salary_record = @employee.employee_salary_records.new
  end

  def create
    @salary_record = @employee.employee_salary_records.new(salary_record_params)
    if @salary_record.save
      redirect_to employee_employee_salary_records_path(@employee), notice: "Salary record created successfully."
    else
      render :new
    end
  end

  def edit; end

  def update
    if @salary_record.update(salary_record_params)
      redirect_to employee_employee_salary_records_path(@employee), notice: "Salary record updated successfully."
    else
      render :edit
    end
  end

  def destroy
    @salary_record.destroy
    redirect_to employee_employee_salary_records_path(@employee), notice: "Salary record deleted successfully."
  end

  private

  def set_employee
    @employee = Employee.find(params[:employee_id])
  end

  def set_salary_record
    @salary_record = @employee.employee_salary_records.find(params[:id])
  end

  def salary_record_params
    params.require(:employee_salary_record).permit(:salary, :paid_on)
  end
end
