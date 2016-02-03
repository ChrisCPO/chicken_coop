class Coop < ActiveRecord::Base
  attr_accessor :door_open

  validates :name, presence: true

  has_many :chickens, dependent: :destroy

  has_one :fox, dependent: :destroy

  accepts_nested_attributes_for :fox,  allow_destroy: true
  accepts_nested_attributes_for :chickens, allow_destroy: true

  validates_associated :chickens, if: :door_open?
  validates_associated :fox, if: :door_open?

  def door_open?
    @door_open
  end
end
