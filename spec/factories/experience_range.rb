FactoryBot.define do
  factory :experience_range do
    name { Random.rand(0..99) }
  end
end