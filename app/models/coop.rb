class Coop < ActiveRecord::Base
  attr_accessor :door_open

  validates :name, presence: true

  has_many :chickens

  has_one :fox

  validates_associated :chickens, if: :door_open?
  validates_associated :fox, if: :door_open?

  def door_open?
    @door_open
  end
end
