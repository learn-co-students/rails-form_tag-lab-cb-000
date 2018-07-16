class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end
  
  def new
    render "new"
  end
  
  def create
  @student =  Student.create(first_name: params[:first_name], last_name: params[:last_name])
  render "show"
end
  
end
