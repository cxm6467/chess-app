FactoryBot.define do
  
  factory :user do
    sequence :email do |n|
      "sampleEmails#{n}@gmail.com"
    end
    password "secretPassword"
    password_confirmation "secretPassword"

  end

  factory :game do 
  association :white_player, factory: :user
  association :black_player, factory: :user
  association :next_player_to_move, factory: :user

  end

end