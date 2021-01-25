class TeacherVotesController < ApplicationController

  def create
    voted_teacher = Teacher.find(params[:voted_teacher_id])
    begin
      current_teacher.vote_theacher(voted_teacher)
      flash[:success] = "Theacher voted successfully!"
    rescue 
      flash[:warning] = "Teacher previously voted"
    end
    redirect_to course_registries_url
  end
  
end