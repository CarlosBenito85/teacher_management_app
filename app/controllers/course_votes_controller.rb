class CourseVotesController < ApplicationController

  def create
    voted_course = Course.find(params[:course_id])
    begin
      current_teacher.vote_course(voted_course)
      flash[:success] = "Course voted successfully!"
    rescue 
      flash[:warning] = "Course previously voted"
    end
    redirect_to course_registries_url
  end
  
end