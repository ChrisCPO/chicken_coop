class Coop < ActiveRecord::Base
  validates :name, presence: true
end
