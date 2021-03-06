require 'faker'

puts "cleaning DB"

Message.destroy_all
History.destroy_all
Goal.destroy_all
Buddyship.destroy_all
User.destroy_all

puts "destroyed"

# create users

user1 = User.create!(date_of_birth: 19991011, language: "English", streak: 0, longest_streak: 12, created_at: 200.days.ago, first_name: "Gloria", last_name: "Lopez", username: "Espanolita", email: "gl@gmail.com", password: "123456", country: "ES", introduction: "Hola! I am Gloria from Spain, I have 2 children and we live in sunny Costa del Sol. However I travel a lot for work.", goal_description: "I have struggled to get back in shape after having my kids. Every Monday I start again and by Wednesday I have gone off the track.", photo: "https://armenianweekly.com/wp-content/uploads/2012/06/arevik.jpg" )
user2 = User.create!(date_of_birth: 19900811, language: "English", streak: 0, longest_streak: 51, created_at: 83.days.ago, first_name: "Anna", last_name: "Schmidt", username: "Pineapple1", email: "as@gmail.com", password: "123456", country: "DE", introduction: "My name is Anna and I live in Berlin. I am a foodie and enjoyed going out and spending time with my friends and family who are also big food lovers.", goal_description: "It would be important for me to reach my goal as I want to improve my health but it is really hard to start as people around me eat the same way I do now and I want to change it.", photo: "https://vuesax.com/avatars/avatar-5.png" )
user3 = User.create!(date_of_birth: 19801012, language: "English", streak: 0, longest_streak: 0, created_at: Time.now, first_name: "Jane", last_name: "Brown", username: "JaneyB", email: "jb@gmail.com", password: "123456", country: "GB", introduction: "Hi there! Very excited to be here and find a like minded person to achieve my goal with. I was born and raised in London and still live here. I travel a lot for work", goal_description: "I work long hours and skip my meals very often. I find it hard to stick to healthy eating on daily basis.", photo:"https://vuesax.com/avatars/avatar-3.png" )
santa = User.create(date_of_birth: 19880819, language: "English", created_at: 75.days.ago, first_name: "Santa", last_name: "Cadusch", username: "Santana", email: "santa@fanta.com", password: "123456", introduction: "My name is Santa, I am originally from Latvia and enjoy spending time with my family and friends. Lately have discovered passion for coding :)", goal_description: "I finally want to commit and reach my goal and feel great in my body.", country: "CH", photo: "https://kitt.lewagon.com/placeholder/users/casantadu", streak: 8, longest_streak: 31)
sam = User.create(date_of_birth: 19991011, language: "English", created_at: 101.days.ago, first_name: "Sam", last_name: "Hinton", username: "Samamam", email: "sam@fanta.com", password: "123456", introduction: "I enjoy long walks in the nature on the weekends.", goal_description: "I think this app would help me to be accountable to another person and reach my goals.", country: "ES", photo: "https://kitt.lewagon.com/placeholder/users/samhinton88", streak: 0, longest_streak: 11)
juli =  User.create(date_of_birth: 19810728, language: "English", created_at: 250.days.ago, first_name: "Juliana", last_name: "Schlup", username: "Jujubeleza", email: "juli@fanta.com", password: "123456", introduction: "I love listening to the same music a million times.", goal_description: "If I am better today than I was yesterday I will be a winner.", country: "CH", photo: "https://kitt.lewagon.com/placeholder/users/juschlup", streak: 5, longest_streak: 74)
marc = User.create(date_of_birth: 20011011, language: "English", created_at: 40.days.ago, first_name: "Mark", username: "Chiquito", last_name: "Tchuchuco", email: "mark@fanta.com", password: "123456", introduction: "I am very happy to be part od BuddApp! :)", goal_description: "I finally want to commit and reach my goal and feel great in my body.", country: "CL", photo: "https://i.pinimg.com/280x280_RS/8f/0f/f6/8f0ff6a21eebb7f02577286a533f5b73.jpg", streak: 2, longest_streak: 10)
user4 = User.create!(date_of_birth: 19801011, language: "English", streak: 0, longest_streak: 0, created_at: 52.days.ago, first_name: "Fiona", last_name: "Watkins", username: "Wildlife", email: "wl@gmail.com", password: "123456", country: "ZA", introduction: "I work as a kindergarten teacher and run marathons", goal_description: "I really want to change my habits and become the best version of myself", photo: "https://vuesax.com/avatars/avatar-4.png" )
user5 = User.create!(date_of_birth: 19951011, language: "English", streak: 0, longest_streak: 0, created_at: 93.days.ago, first_name: "Belinda", last_name: "Lopez", username: "BGarcia", email: "bg@gmail.com", password: "123456", country: "NO", introduction: "Love travelling, learning new languages and meeting new people.", goal_description: "It would be wonderful to stick to healhty eating habits consistently and tach healthy eating to my children from a young age.", photo: "https://qph.fs.quoracdn.net/main-qimg-7fb93146f5e4e470f5a590d2fc38be3b" )




# user2 = current_user, user1 = buddy!!!!!

Buddyship.create!(user2_id: santa.id, user1_id: juli.id)

puts "buddyship created"


# rename goals
goal1 = Goal.create!(name: "Improve personal finances", description: "Having your personal finances in order, is one of the most important things you can do to live a healthy, happy and secure life.")
goal2 = Goal.create!(name: "Break a habit", description: "A bad habit can be anything from chain-smoking to obsessively watching videos of cats on YouTube. Habits are contagious - smokers are more likely to quit when they???re hanging out with other quitters.")
goal3 = Goal.create!(name: "Eat better", description: "You are what you eat. If you eat a healthy, balanced diet, you will feel better and more energized. ")
goal4 = Goal.create!(name: "Improve self-care", description: "Self-care keeps us healthy, happy, and more in tune with our minds and bodies. When we take good care of ourselves, we???re likely to see an improvement in many aspects of our lives, including our physical health and relationships.")
goal5 = Goal.create!(name: "Lose weight", description: "By shedding extra fat and unnecessary pounds, you reduce the burden on your heart, lungs, blood vessels and skeleton. You give yourself the gift of active living, you lower your blood pressure and you help yourself feel better, too.")
goal6 = Goal.create!(name: "Sleep better", description: "Getting enough sleep helps keep your mind and body healthy. Sleep plays a critical role in immune function, metabolism, memory, learning, and other vital functions.")
goal7 = Goal.create!(name: "Grow intellectually", description: "Intellectual wellness encourages learning. It???s important to explore new ideas. It stimulates curiosity and motivates you to try new things and develop a better understanding of how you see the relationship between yourself and others.")
goal8 = Goal.create!(name: "Grow spiritually", description: "Developing our spirituality can help us deal with life???s challenges and grow into a better, more whole and happy person.")
goal9 = Goal.create!(name: "Get organized", description: "Science has shown getting organized has health benefits, small changes and subsequent improvements in one area can lead to positive effects in other areas.")


history1 = History.create!(user: user1, goal: goal3, start_date: Time.now)
history2 = History.create!(user: user2, goal: goal3, start_date: Time.now)
history3 = History.create!(user: user3, goal: goal3, start_date: Time.now)
history4 = History.create!(user: sam, goal: goal3, start_date: Time.now)
history5 = History.create!(user: marc, goal: goal3, start_date: Time.now)
history5 = History.create!(user: user4, goal: goal3, start_date: 1.day.ago)
history6 = History.create!(user: user5, goal: goal3, start_date: 1.day.ago)

historyjuli1 = History.create!(user: juli, goal: goal2, start_date: 250.days.ago, end_date: 75.days.ago)
historysanta = History.create!(user: santa, goal: goal5, start_date: 75.days.ago)
historyjuli = History.create!(user: juli, goal: goal5, start_date: 75.days.ago)

history7 = History.create!(user: user1, goal: goal8, start_date: 200.days.ago, end_date: 2.days.ago)
history8 = History.create!(user: user2, goal: goal5, start_date: 83.days.ago, end_date: 1.day.ago)
history9 = History.create!(user: user5, goal: goal6, start_date: 90.days.ago, end_date: Time.now)
history10 = History.create!(user: user4, goal: goal5, start_date: 52.days.ago, end_date: 1.day.ago)

puts "Created #{Goal.count} goals."
puts "Created #{User.count} users."
puts "Created #{History.count} histories."
