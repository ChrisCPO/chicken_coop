FactoryGirl.define do
  factory :chicken do
    name Faker::Name.first_name
    sex { rand(0..1) }
  end
end
