FactoryBot.define do
  factory :final do
    association :user
    battler_id    { 2 }
    foundation    { 2 }
    accuracy      { 3 }
    originality   { 4 }
    dynamic       { 5 }
    strategy      { 4 }
    score         { 18 }
  end
end
