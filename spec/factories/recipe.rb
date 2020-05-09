FactoryBot.define do
  factory :recipe do
    name { "Soup" }
    base { "Beef" }
    cooking_length { 1 }
    servings { 2 }

    association :meal
    association :cuisine

    factory :baby_friendly_recipe do
      baby_friendly { true }
    end

    factory :not_baby_friendly_recipe do
      baby_friendly { false }
    end
  end
end