require 'faker'

puts "cleaning DB"

Message.destroy_all
History.destroy_all
Goal.destroy_all
Buddyship.destroy_all
User.destroy_all

puts "destroyed"

santa = User.create(first_name: "Santa", last_name: "Cadusch", email: "santa@fanta.com", password: "123456", introduction: Faker::Movies::BackToTheFuture, goal_description: Faker::Movies::StarWars.quote )
yulia = User.create(first_name: "Yulia", last_name: "Mikhaylova", email: "yulia@fanta.com", password: "123456", introduction: Faker::Movies::BackToTheFuture, goal_description: Faker::Movies::StarWars.quote )

puts "users created"

Buddyship.create!(user1_id: santa.id, user2_id: yulia.id)

puts "buddyship created"

50.times do
  user = User.create!(
  username: Faker::Games::Heroes.specialty,
  country: Faker::Address.country,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "123456",
  introduction: Faker::TvShows::TheExpanse.quote,
  goal_description: Faker::Movies::StarWars.quote
)
end
user1 = User.create!(first_name: "Gloria", last_name: "Lopez", username: "Espanolita", email: "gl@gmail.com", password: "123456", country: "Spain", introduction: "Hola! I am Gloria from Spain, I have 2 children and we live in sunny Costa del Sol. I am very happy to be part od BuddApp! :)", goal_description: "I have struggled to get back in shape after having my kids. Every Monday I start again and by Wednesday I have gone off the track. I finally want to commit and reach my goal and feel great in my body.", photo: "https://upload.wikimedia.org/wikipedia/commons/4/4b/Carolina_Mar%C3%ADn_2014_%28cropped%29.jpg" )
user2 = User.create!(first_name: "Anna", last_name: "Schmidt", username: "Pineapple1", email: "as@gmail.com", password: "123456", country: "Germany", introduction: "My name is Anna and I live in Berlin. I am a foodie and enjoyed going out and spending time with my friends and family who are also big food lovers.", goal_description: "It would be important for me to reach my goal as I want to improve my health but it is really hard to start as people around me eat the same way I do now and I want to change it.", photo: "https://i.pinimg.com/originals/7c/ca/6d/7cca6dfb54604fdef17282d84d737e5a.jpg")
user3 = User.create!(first_name: "Jane", last_name: "Brown", username: "JaneyB", email: "jb@gmail.com", password: "123456", country: "United Kingdom", introduction: "Hi there! Very excited to be here and find a like minded person to achieve my goal with. I was born and raised in London and still live here. I enjoy long walks in the nature on the weekends.", goal_description: "I work long hours and skip my meals very often. I find it hard to stick to healthy eating on daily basis and I think it would help me to be accountable to another person.", photo:"http://2.bp.blogspot.com/-KRRjbk8tDQ8/UFnvdU-ejnI/AAAAAAAAAKY/hZohlhcb_lU/s400/stylish-girls-dp-facebook-7.jpg")

# rename goals
goal1 = Goal.create!(name: "Improve personal finances", description: "Having your personal finances in order, is one of the most important things you can do to live a healthy, happy and secure life.")
goal2 = Goal.create!(name: "Break a habit", description: "A bad habit can be anything from chain-smoking to obsessively watching videos of cats on YouTube. Habits are contagious - smokers are more likely to quit when they’re hanging out with other quitters.")
goal3 = Goal.create!(name: "Eat better", description: "You are what you eat. If you eat a healthy, balanced diet, you will feel better and more energized. ")
goal4 = Goal.create!(name: "Improve self-care", description: "Self-care keeps us healthy, happy, and more in tune with our minds and bodies. When we take good care of ourselves, we’re likely to see an improvement in many aspects of our lives, including our physical health and relationships.")
goal5 = Goal.create!(name: "Lose weight", description: "By shedding extra fat and unnecessary pounds, you reduce the burden on your heart, lungs, blood vessels and skeleton. You give yourself the gift of active living, you lower your blood pressure and you help yourself feel better, too.")
goal6 = Goal.create!(name: "Sleep better", description: "Getting enough sleep helps keep your mind and body healthy. Sleep plays a critical role in immune function, metabolism, memory, learning, and other vital functions.")
# goal6 = Goal.create!(name: "Improve fitness", description: "Being active has been shown to have many health benefits, both physically and mentally.")
goal7 = Goal.create!(name: "Grow intellectually", description: "Intellectual wellness encourages learning. It’s important to explore new ideas. It stimulates curiosity and motivates you to try new things and develop a better understanding of how you see the relationship between yourself and others.")
goal8 = Goal.create!(name: "Grow spiritually", description: "Developing our spirituality can help us deal with life’s challenges and grow into a better, more whole and happy person.")
goal9 = Goal.create!(name: "Get organized", description: "Science has shown getting organized has health benefits, small changes and subsequent improvements in one area can lead to positive effects in other areas.")


history1 = History.create!(user: user1, goal: goal3, start_date: Faker::Date.between(from: 100.days.ago, to: Date.today))
history2 = History.create!(user: user2, goal: goal3, start_date: Faker::Date.between(from: 100.days.ago, to: Date.today))
history3 = History.create!(user: user3, goal: goal3, start_date: Faker::Date.between(from: 100.days.ago, to: Date.today))

# history4 = History.create!(user: user3, goal: goal4, start_date: Faker::Date.between(from: 100.days.ago, to: Date.today))
# history5 = History.create!(user: user2, goal: goal4, start_date: Faker::Date.between(from: 100.days.ago, to: Date.today))
# history6 = History.create!(user: user1, goal: goal4, start_date: Faker::Date.between(from: 100.days.ago, to: Date.today))

100.times do
  history = History.create!(
  user: User.all.shuffle.first,
  goal: Goal.all.shuffle.first,
  start_date: Faker::Date.between(from: 300.days.ago, to: Date.today),
  end_date: Faker::Date.between(from: 100.days.ago, to: Date.today)
  )
end

User.all.each do |user|
  history = History.create!(
  user: user,
  goal: Goal.all.shuffle.first,
  start_date: Faker::Date.between(from: 100.days.ago, to: Date.today)
  )
end

puts "Created #{Goal.count} goals."
puts "Created #{User.count} users."
puts "Created #{History.count} histories."
