class TeachersController < ApplicationController
  
  def index
    @teachers = Teacher.all
  end
  
  def new
    @teacher = Teacher.new
  end
  
  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      flash[:success] = "Teacher created successfully!"
      redirect_to teachers_url
    else
      render 'new'
    end
  end
  
  private
  
    def teacher_params
      params.require(:teacher).permit(:name, :email)
    end
  
end
