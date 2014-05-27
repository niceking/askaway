# == Schema Information
#
# Table name: questions
#
#  id            :integer          not null, primary key
#  body          :text
#  name          :string(255)
#  email         :string(255)
#  is_anonymous  :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  vote_count    :integer          default(0)
#  answers_count :integer          default(0)
#

FactoryGirl.define do
  factory :question do
    body { Faker::Lorem.characters(120) }
    name { Faker::Name.name }
    email { Faker::Internet.email }
  end
end
