class ApplicationController < ActionController::API
  before_action :current_user
  
  #fake auth
  def current_user
    person_id = request.headers["HTTP_PERSON_ID"]
    @current_user = Person.find_by(id: person_id)
  end
end
