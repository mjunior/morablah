class Ad < ApplicationRecord
  has_many :ad_items,  dependent: :destroy 
  has_many :items, :through => :ad_items
  has_many :images


  has_many :groups

  scope :by_items, -> (items) {joins(:ad_items).where('ad_items.item_id' => items)}
end
