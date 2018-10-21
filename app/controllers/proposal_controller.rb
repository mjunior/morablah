class ProposalController < ApplicationController

  def create
    @proposal = ProposalService.new({current_user_id: @current_user.id, group_id: params[:group_id]}).perform
    render json: @proposal, include: [:clauses]
  end
end
