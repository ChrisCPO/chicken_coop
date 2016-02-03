require 'rails_helper'

RSpec.describe Coop, type: :model do
  describe "validations" do
    it { should validate_presence_of(:name) }

    describe "validates associates" do
      context "when door is open" do
        it "validates associated models" do
          coop = Coop.new(name: "Mr Jones")
          chicken = build(:chicken, name: "", sex: 0  )
          rooster = build(:chicken, name: "lucky", sex: 0  )
          fox = build(:fox, name: "", hunger: nil)
          coop.chickens = [ chicken, rooster ]
          coop.fox = fox

          coop.door_open = true
          coop.valid?

          expect(coop.door_open?).to eq true
          expect(coop.errors.count).to eq 3
        end
      end

      context "when door is closed" do
        it "should NOT validate associated models" do
          coop = Coop.new(name: "Mr Jones")
          chicken = build(:chicken, name: "", sex: 0  )
          rooster = build(:chicken, name: "lucky", sex: 0  )
          fox = build(:fox, name: "", hunger: nil)
          coop.chickens = [ chicken, rooster ]
          coop.fox = fox

          coop.door_open = false
          coop.valid?

          expect(coop.door_open?).to eq false
          expect(coop.errors.full_messages).not_to include "Chickens is invalid"

          #validations are still happending on chicken, but the fox does not get
          #valid? called on it
        end
      end
    end
  end

    describe "relationships" do
      it { should have_many(:chickens) }
      it { should have_one(:fox) }
    end
  end
