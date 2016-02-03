require 'rails_helper'

RSpec.describe Chicken, type: :model do
  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should define_enum_for(:sex) }
  end

  describe "relationships" do
    it { should belong_to(:coop) }
  end
end
