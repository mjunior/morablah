class Proposal < ApplicationRecord
  belongs_to :person_one, class_name: 'Person'
  belongs_to :person_two, class_name: 'Person'
  has_many :clauses
  
  accepts_nested_attributes_for :clauses


  def finish_by_user(user)
    self.clauses.each do |clause|    
      ClauseStatus.create(clause: clause, person: user)
    end
    byebug
  end
end
