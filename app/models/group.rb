class Group < ApplicationRecord
  belongs_to :ad
  belongs_to :person

  has_many :group_preferences,  dependent: :destroy 
  has_many :preferences, :through => :group_preferences
  
  accepts_nested_attributes_for :preferences
end
