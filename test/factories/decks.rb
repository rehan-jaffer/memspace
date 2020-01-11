FactoryBot.define do
  factory :deck do
    name { "Sample Deck" }
    description { "Sample Deck used in testing" }

    after :create do |deck|
      create_list :card, 5, deck: deck
    end    
  end
end
