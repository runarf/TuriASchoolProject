
FactoryGirl.define do

  factory :user do
    name "Ingvild"
    email 'ingvild@turi.no'
    password '12345678'
    age 22
    country "Norway"
    town "Tromsø"
    status "Single"
  end

end