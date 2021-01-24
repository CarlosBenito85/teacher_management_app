class CourseRegistriesController < ApplicationController
  
  def index
    @course_registries = CourseRegistry.all
  end
  
  def new
    @courses = Course.all
    @course_registry = CourseRegistry.new
  end
  
  def create
    @course_registry = CourseRegistry.new(teacher_id: params[:teacher_id], course_id: params[:course_id])
    if @course_registry.save
      flash[:success] = "Course Registry created successfully!"
      redirect_to course_registries_url
    else
      render 'new'
    end
  end
  
  private
  
    def course_registry_params
      params.require(:course_registry).permit(:teacher_id, :course_id)
    end
  
end
