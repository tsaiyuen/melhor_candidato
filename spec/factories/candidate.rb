FactoryBot.define do
  factory :candidate do
    external_id { Random.rand(0..99) }
    city { build(:city) }
    experience_range { build(:experience_range) }
    technologies {[build(:technology)]}
  end
end