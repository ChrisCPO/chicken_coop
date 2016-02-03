FactoryGirl.define do
  factory :fox do
    name Faker::Name.first_name
    color "grey"
    hunger { rand(0..1) }
  end
end
