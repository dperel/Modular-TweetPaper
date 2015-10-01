FactoryGirl.define do
  factory :clipping do
    title 'News'
    user_id '1'

    trait :tweet do
      tweet 'Newsitem1'
    end
  end
end
