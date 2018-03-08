FactoryBot.define do
  factory :act do
    sequence(:name) { |n| "Act #{n}" }
  end
end
