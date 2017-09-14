class Api::V1::EmployeesController < ApplicationController
  def index
    @employees = Employee.all
    render 'index.json.jbuilder'
  end

  def show
    @employee = Employee.find_by(id: params[:id])
  end

  def create
    @employee = Employee.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      birthdate: params[:birthdate],
      ssn: params[:ssn]
      )
    @employee.save
    render 'show.json.jbuilder'
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.update(
      first_name: params[:first_name] || @employee.first_name,
      last_name: params[:last_name] || @employee.last_name,
      email: params[:email] || @employee.email,
      birthdate: params[:birthdate] || @employee.birthdate,
      ssn: params[:ssn] || @employee.ssn
    )
    render 'show.json.jbuilder'
  end

  def destroy
    @employee = Employee.find_by(id: params[:id])
    @employee.destroy
    render 'show.json.jbuilder'
  end
end
