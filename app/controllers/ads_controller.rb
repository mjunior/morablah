class AdsController < ApplicationController
  def show
    @ad = Ad.find_by(id: params[:id])
    render json: @ad, include: [:items, :groups => { include: [:person,:preferences] }]
  end

  def create_group
    @group = Group.new(group_params)
    if @group.save
      render json: @group
    else
      render json: @group.errors, status: :unprocessable_entity
    end
  end

  def preferences
    @preferences = Preference.all
    render json: @preferences , status: :ok
  end

  def group_params
    params.merge(person_id: @current_user.id).permit(:ad_id, :person_id, :amount, preference_ids: [])
  end
end
