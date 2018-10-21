class ClauseStatus < ApplicationRecord
  belongs_to :clause
  belongs_to :person
end
