FactoryGirl.define do
  factory :artist do |n|
    sequence(:name) { |n| "Spica#{n}"}
    sequence(:image_path) { "http://www.koogle.tv/static/media/uploads/news/160210_spica_01.jpg" }
  end

  factory :song do |n|
    sequence(:title) { |n| "Bar Bar Bar #{n}" }
  end

  factory :playmaster do |n|
    sequence(:name) { |n| "My KPop #{n}" }
  end
end
