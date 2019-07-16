class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    #This code is asking the Student model in models/student.rb to retrieve all of
    #the students from the database and then save them in an instance variable 
    #called @students.
    @students = Student.all
    
    #Once @students is defined, the controller calls the app/views/students/index.html.erb
    #file and is able to iterate through @students and render them in HTML
    #according to how it is structured. 
  end

  def show
  end

  def new
  end

  def create
    session[:form_params] = params.inspect
    redirect_to new_student_path
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end