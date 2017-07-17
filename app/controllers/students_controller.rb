class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @student = params
    redirect_to new_student_path(student: @student)
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

end
