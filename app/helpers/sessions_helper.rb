module SessionsHelper

  def log_in(teacher)
    session[:teacher_id] = teacher.id
  end
  
  def current_teacher
    if session[:teacher_id]
      @current_teacher ||= Teacher.find_by(id: session[:teacher_id])
    end
  end
  
end