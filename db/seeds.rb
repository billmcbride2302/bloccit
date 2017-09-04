require 'random_data'

# Create an admin user
 admin = User.create!(
   name:     'Admin User',
   email:    'admin@example.com',
   password: 'helloworld',
   role:     'admin'
 )
 
 # Create a member
 member = User.create!(
   name:     'Member User',
   email:    'member@example.com',
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
 # #12
   post.update_attribute(:created_at, rand(10.minutes .. 1.year).ago)
 # #13
   rand(1..5).times { post.votes.create!(value: [-1, 1].sample, user: users.sample) }

 # Create Posts
 50.times do
post = Post.create!(
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
     user: users.sample,
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
 puts "#{Vote.count} votes created"
 puts "#{Question.count} question created"