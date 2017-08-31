require 'random_data'

user = User.first
 user.update_attributes(
   email: 'bill@pcrsocial.com', # replace this with your personal email
   password: 'helloworld'
 )

# Create Topics
 15.times do
   Topic.create!(
     name:         RandomData.random_sentence,
     description:  RandomData.random_paragraph
   )
 end
 topics = Topic.all

  # Create Users
 5.times do
   User.create!(
 # #3
   name:     RandomData.random_name,
   email:    RandomData.random_email,
   password: RandomData.random_sentence
   )
 end
 users = User.all

 # Create Posts
 50.times do
 # #1
   Post.create!(
 # #2
     user:   users.sample,
     topic:  topics.sample,
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end

  50.times do
 # #1
   SponsoredPost.create!(
 # #2
     topic:  topics.sample,
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 
 posts = Post.all
 
 # Create Comments
 # #3
 100.times do
   Comment.create!(
 # #4
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end

  100.times do
   Question.create!(
 	title: RandomData.random_sentence, 
 	body: RandomData.random_paragraph, 
 	resolved: false
   )
 end

puts "#{User.count} users created"
puts "#{Post.count}"
 Post.find_or_create_by(title: "Something", body: "Something else")
puts "#{Post.count}"

 puts "Seed finished"
 puts "#{Topic.count} topics created"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
 puts "#{Question.count} question created"