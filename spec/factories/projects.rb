FactoryGirl.define do
  factory :project do
    title { Faker::Superhero.name }
    body { Faker::Hipster.paragraph(2) }
  end
end