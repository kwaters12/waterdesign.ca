FactoryGirl.define do
  factory :post do
    title { Faker::StarWars.character }
    body { Faker::Hipster.paragraph(2) }
  end
end