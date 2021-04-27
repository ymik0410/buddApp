puts "cleaning DB"

Goal.destroy_all

Goal.create([{ name: "Improve personal finances", description: "Having your personal finances in order, is one of the most important things you can do to live a healthy, happy and secure life."},
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


puts "Created #{Goal.count} goals.
