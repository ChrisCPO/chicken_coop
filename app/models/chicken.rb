class Chicken < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :coop

  enum sex: [:hen, :rooster]
end
