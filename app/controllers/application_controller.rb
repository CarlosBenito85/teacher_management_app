class ApplicationController < ActionController::Base
  
  def hello
    render html: "Hello, Domestika!"
  end
  
end
