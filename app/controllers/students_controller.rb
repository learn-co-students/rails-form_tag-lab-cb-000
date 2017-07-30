class StudentsController < ApplicationController

  def index
    @students = Student.all
    render 'students/index'
  end

  def show
    @student = Student.find(params[:id])
    render 'students/show'
  end

  def new
    render 'students/new'
  end

  def create
    student = Student.new(:first_name => params[:student][:first_name],
                   :last_name => params[:student][:last_name])
    if student.save
      redirect_to students_path
    end
  end

end
