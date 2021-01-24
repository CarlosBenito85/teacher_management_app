class CoursesController < ApplicationController
  
  def new
    @course = Course.new
  end
  
  def create
    @course = Course.new(course_params)
    if @course.save
      flash[:success] = "Course created successfully!"
      redirect_to new_course_registry_url
    else
      render 'new'
    end
  end
  
  private
  
    def course_params
      params.require(:course).permit(:title)
    end
  
end
