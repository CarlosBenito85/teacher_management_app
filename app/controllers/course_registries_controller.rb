class CourseRegistriesController < ApplicationController
  
  def index
    @course_registries = CourseRegistry.all
  end
  
end
