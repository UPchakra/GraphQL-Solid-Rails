# frozen_string_literal: true

FactoryBot.define do
  factory :blog_post do
    title  { Faker::Name.name }
    content { 'sadfafa' }
    author { Faker::Name.name }
  end
end
