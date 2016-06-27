FactoryGirl.define do
  factory :client do
    name "John Doe"
    sequence(:cpf) { |n| "01234567892#{n}" }
    location "Rua dos bobos"
    salary 2500.0
  end
end
