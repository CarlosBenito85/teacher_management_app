class TeacherVotesController < ApplicationController

  def create
    voted_teacher = Teacher.find(params[:voted_id])
    current_teacher.vote(voted_teacher)
    redirect_to course_registries_url
  end
  
end