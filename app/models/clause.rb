class Clause < ApplicationRecord
  belongs_to :proposal

  def accepted? user
    ClauseStatus.exists?(person: user, clause: self)
  end
end
