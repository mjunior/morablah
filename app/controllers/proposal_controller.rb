class ProposalController < ApplicationController

  def create
    @proposal = ProposalService.new({current_user_id: @current_user.id, group_id: params[:group_id]}).perform
    render json: @proposal, include: [:clauses]
  end

  def show 
    @proposal = Proposal.find_by(id: params[:id])
    render json: @proposal, include: [:clauses, :person_one, :person_two]
  end

  def finish
    @proposal = Proposal.find_by(id: params[:proposal_id])
    @proposal.finish_by_user(@current_user)
  end
end
