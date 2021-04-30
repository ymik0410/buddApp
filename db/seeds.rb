require 'faker'

puts "cleaning DB"

Message.destroy_all
History.destroy_all
Goal.destroy_all
Buddyship.destroy_all
User.destroy_all

# puts "destroyed"

# santa = User.create(first_name: "Santa", last_name: "Cadusch", email: "santa@fanta.com", password: "123456", introduction: Faker::Movies::BackToTheFuture, goal_description: Faker::Movies::StarWars.quote )
# yulia = User.create(first_name: "Yulia", last_name: "Mikhaylova", email: "yulia@fanta.com", password: "123456", introduction: Faker::Movies::BackToTheFuture, goal_description: Faker::Movies::StarWars.quote )

# puts "users created"

# Buddyship.create!(user1_id: santa.id, user2_id: yulia.id)

# puts "buddyship created"

# 50.times do
#   user = User.create!(
#   username: Faker::Games::Heroes.specialty,
#   country: Faker::Address.country,
#   first_name: Faker::Name.first_name,
#   last_name: Faker::Name.last_name,
#   email: Faker::Internet.email,
#   password: "123456",
#   introduction: Faker::TvShows::TheExpanse.quote,
#   goal_description: Faker::Movies::StarWars.quote
# )
# end
user1 = User.create!(first_name: "Gloria", last_name: "Lopez", username: "Espanolita", email: "gl@gmail.com", password: "123456", country: "Spain", introduction: "Hola! I am Gloria from Spain, I have 2 children and we live in sunny Costa del Sol. I am very happy to be part od BuddApp! :)", goal_description: "I have struggled to get back in shape after having my kids. Every Monday I start again and by Wednesday I have gone off the track. I finally want to commit and reach my goal and feel great in my old clothes.")
user2 = User.create!(first_name: "Anna", last_name: "Schmidt", username: "Pineapple1", email: "as@gmail.com", password: "123456", country: "Germany", introduction: "", goal_description: "")
user3 = User.create!(first_name: "Jane", last_name: "Brown", username: "JaneyB", email: "jb@gmail.com", password: "123456", country: "United Kingdom", introduction: "", goal_description: "")

# rename goals
goal = Goal.create!([{ name: "Improve personal finances", description: "Having your personal finances in order, is one of the most important things you can do to live a healthy, happy and secure life."},
  { name: "Break a habit", description: "A bad habit can be anything from chain-smoking to obsessively watching videos of cats on YouTube. Habits are contagious - smokers are more likely to quit when they’re hanging out with other quitters."},
  { name: "Eat better", description: "You are what you eat. If you eat a healthy, balanced diet, you will feel better and more energized. "},
  { name: "Improve self-care", description: "Self-care forms an essential part of a lifestyle that keeps us healthy, happy, and more in tune with our minds and bodies. When we take good care of ourselves, we’re likely to see an improvement in many aspects of our lives, including our physical health and relationships."},
  { name: "Lose weight", description: "By shedding extra fat and unnecessary pounds, you reduce the burden on your heart, lungs, blood vessels and skeleton. You give yourself the gift of active living, you lower your blood pressure and you help yourself feel better, too."},
  { name: "Sleep better", description: "Getting enough sleep helps keep your mind and body healthy. Sleep plays a critical role in immune function, metabolism, memory, learning, and other vital functions."},
  { name: "Improve fitness", description: "Being active has been shown to have many health benefits, both physically and mentally."},
  { name: "Grow intellectually", description: "Intellectual wellness encourages learning. It’s important to explore new ideas in order to become better rounded. It should also stimulate curiosity. Curiosity is important because it motivates you to try new things and develop a better understanding of how you see the relationship between yourself and others."},
  { name: "Grow spiritually", description: "Developing our spirituality can help us deal with life’s challenges and grow into a better, more whole and happy person."},
  { name: "Get organized", description: "Science has shown getting organized has health benefits, small changes and subsequent improvements in one area can lead to positive effects in other areas."},
])

# 100.times do
#   history = History.create!(
#   user: User.all.shuffle.first,
#   goal: Goal.all.shuffle.first,
#   start_date: Faker::Date.between(from: 300.days.ago, to: Date.today),
#   end_date: Faker::Date.between(from: 100.days.ago, to: Date.today)
#   )
# end

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
