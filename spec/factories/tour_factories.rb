FactoryGirl.define do

  factory :user do
    first_name "John"
    last_name "Jones"
    phone "408-123-4567"
    email "jake@yahoo.com"
  end

  factory :amenity do
    description "pool"
  end

  factory :tour do
    tour_date "2014/12/14"
  end

end