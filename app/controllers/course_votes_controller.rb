class CourseVotesController < ApplicationController

  def create
    voted_course = Course.find(params[:course_id])
    current_teacher.vote_course(voted_course)
    redirect_to course_registries_url
  end
  
end