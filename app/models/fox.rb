class Fox < ActiveRecord::Base
  validates :name, presence: true
  validates :color, presence: true
  validates :hunger, presence: true

  belongs_to :coop
end
