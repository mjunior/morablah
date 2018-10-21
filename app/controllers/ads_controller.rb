class AdsController < ApplicationController
  def show
    @ad = Ad.find_by(id: params[:id])
    render json: @ad, include: [:items, :images, :groups => { include: [:person,:preferences] }]
  end

  def preferences
    @preferences = Preference.all
    render json: @preferences , status: :ok
  end

  def show_group
    @group = Group.find_by(id: params[:group_id])
    render json: @group, include: [:person, :preferences, :ad], status: :ok
  end

  def create_group
    @group = Group.new(group_params)
    if @group.valid?
       @group.remaining_amount = @group.ad.amount - @group.amount
       @group.save
      render json: @group
    else
      render json: @group.errors, status: :unprocessable_entity
    end
  end

  def group_params
    params.merge(person_id: @current_user.id).permit(:ad_id, :person_id, :amount, preference_ids: [])
  end
end
