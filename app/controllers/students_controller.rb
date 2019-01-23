class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @rams = []
  end

  def create
    dude = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    @rams = params
    render "new"
  end

end
