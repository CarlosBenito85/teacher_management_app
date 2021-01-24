class SessionsController < ApplicationController

  def create
    teacher = Teacher.find_by(id: params[:user_id])
    if teacher
      log_in teacher
      redirect_to course_registries_url
    else
      flash.now[:danger] = 'Invalid Teacher'
      redirect_to teachers_url
    end
  end
  
end