 FactoryGirl.define do
   pw = RandomData.random_sentence

   factory :comment do
     body RandomData.random_paragraph
     user
   end
 end