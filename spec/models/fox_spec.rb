require 'rails_helper'

RSpec.describe Fox, type: :model do
  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:color) }
    it { should validate_presence_of(:hunger) }
  end

  describe "relationships" do
    it { should belong_to(:coop) }
  end
end
