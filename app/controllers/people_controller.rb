class PeopleController < ApplicationController
  def me
    return head 403 if @current_user.nil?
    render json: @current_user, status: :ok
  end
  
  def create
    @person = Person.new(person_params)
    if @person.save
      render json: @person, status: :created, location: @person
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  private
    def person_params
      params.require(:person).permit(:name, :avatar, :rg, :cpf)
    end
end
