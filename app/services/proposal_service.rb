class ProposalService 
  def initialize params
    @group = Group.find_by(id: params[:group_id])
    @person_two_id = params[:current_user_id]
  end

  def perform
    preferences = @group.preferences.map{ |preference| {title: preference.title }}
    proposal_params = {
      person_one_id: @group.person_id,
      person_two_id: @person_two_id,
      clauses_attributes: preferences
    }
    Proposal.create(proposal_params)
  end
end