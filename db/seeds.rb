require 'open-uri'

puts "Cleaning db..."
Achievement.destroy_all
Proportion.destroy_all
Goal.destroy_all
User.destroy_all
Task.destroy_all
Family.destroy_all
Category.destroy_all

puts "Creating categories..."

chores = Category.create(name: "chores")
readings = Category.create(name: "readings")
grades = Category.create(name: "grades")

puts "Creating family..."

family = Family.new(name: "dupont")

puts "Creating chores..."


task_one = Task.new(name: "Dishes", description: "wash the dishes", category: chores)
task_one.photo.attach(io: File.open('./app/assets/images/dishes.svg'), filename: 'dishes.svg')
task_one.save!

task_two = Task.new(name: "Car Wash", description: "clean the car", category: chores)
task_one.photo.attach(io: File.open('./app/assets/images/car_wash.svg'), filename: 'car_wash.svg')
task_two.save!

task = Task.new(name: "Laundry", description: "fold the laundry", category: chores)
task_one.photo.attach(io: File.open('./app/assets/images/washing_basket.svg'), filename: 'washing_basket.svg')
task.save!

task = Task.new(name: "Cleaning", description: "clean the windows", category: chores)
task_one.photo.attach(io: File.open('./app/assets/images/window_cleaner.svg'), filename: 'window_cleaner.svg')
task.save!

task = Task.new(name: "Toilet", description: "clean the toilets", category: chores)
task_one.photo.attach(io: File.open('./app/assets/images/toilet.svg'), filename: 'toilet.svg')
task.save!

task = Task.new(name: "Washing Machine", description: "wash your clothes", category: chores)
task_one.photo.attach(io: File.open('./app/assets/images/washing_machine.svg'), filename: 'washing_machine.svg')
task.save!

task = Task.new(name: "Vacuum", description: "vacuum your room", category: chores)
task_one.photo.attach(io: File.open('./app/assets/images/vacuum_cleaner.svg'), filename: 'vacuum_cleaner.svg')
task.save!

task = Task.new(name: "Vacuum", description: "vacuum your house", category: chores)
task_one.photo.attach(io: File.open('./app/assets/images/vacuum_cleaner.svg'), filename: 'vacuum_cleaner.svg')
task.save!

task = Task.new(name: "Trash", description: "take the bins out", category: chores)
task_one.photo.attach(io: File.open('./app/assets/images/trash.svg'), filename: 'trash.svg')
task.save!

task = Task.new(name: "Laundry", description: "hangs the washing up", category: chores)
task_one.photo.attach(io: File.open('./app/assets/images/setting_laundry.svg'), filename: 'setting_laundry.svg')
task.save!

task = Task.new(name: "Gardening", description: "water the plants", category: chores)
task_one.photo.attach(io: File.open('./app/assets/images/water_can.svg'), filename: 'water_can.svg')
task.save!

task = Task.new(name: "Cleaning", description: "clean the bathroom", category: chores)
task_one.photo.attach(io: File.open('./app/assets/images/sink.svg'), filename: 'sink.svg')
task.save!

task = Task.new(name: "Cleaning", description: "mop the floor", category: chores)
task_one.photo.attach(io: File.open('./app/assets/images/mop.svg'), filename: 'mop.svg')
task.save!

task = Task.new(name: "Cleaning", description: "tidy your house", category: chores)
task_one.photo.attach(io: File.open('./app/assets/images/housekeeping.svg'), filename: 'housekeeping.svg')
task.save!

task = Task.new(name: "Ironning", description: "iron your clothes", category: chores)
task_one.photo.attach(io: File.open('./app/assets/images/iron.svg'), filename: 'iron.svg')
task.save!

task = Task.new(name: "Cleaning", description: "clean your shoes", category: chores)
task_one.photo.attach(io: File.open('./app/assets/images/clean_shoes.svg'), filename: 'clean_shoes.svg')
task.save!

task = Task.new(name: "Cleaning", description: "clean the kitchen", category: chores)
task_one.photo.attach(io: File.open('./app/assets/images/cleaning_set.svg'), filename: 'cleaning_set.svg')
task.save!

task = Task.new(name: "Cleaning", description: "tidy your room", category: chores)
task_one.photo.attach(io: File.open('./app/assets/images/cleaning_desk.svg'), filename: 'cleaning_desk.svg')
task.save!

task = Task.new(name: "Cleaning", description: "clean the house", category: chores)
task_one.photo.attach(io: File.open('./app/assets/images/broom.svg'), filename: 'broom.svg')
task.save!

puts "Creating grades..."

task = Task.new(name: "History", description: "new grade in history", category: grades)
task_one.photo.attach(io: File.open('./app/assets/images/grade.svg'), filename: 'grade.svg')
task.save!

task = Task.new(name: "Litterature", description: "new grade in litterature", category: grades)
task_one.photo.attach(io: File.open('./app/assets/images/grade.svg'), filename: 'grade.svg')
task.save!

task = Task.new(name: "Math", description: "new grade in math", category: grades)
task_one.photo.attach(io: File.open('./app/assets/images/grade.svg'), filename: 'grade.svg')
task.save!

task_three = Task.new(name: "Biology", description: "new grade in biology", category: grades)
task_one.photo.attach(io: File.open('./app/assets/images/grade.svg'), filename: 'grade.svg')
task_three.save!

puts "Creating readings..."

task = Task.new(name: "Reading", description: "reading a new book", category: readings)
task_one.photo.attach(io: File.open('./app/assets/images/reading.svg'), filename: 'reading.svg')

task.save!

puts "Creating everything else..."

child = User.new(first_name: "nini", last_name: "dupont", adult: false, date_of_birth: "2010-12-01", family: family, email: "test@test.com", password: "azerty")

parent = User.new(first_name: "nono", last_name: "dupont", adult: true, date_of_birth: "1987-12-01", family: family, email: "test2@test.com", password: "azerty")

goal = Goal.new(title: "anniversaire Camille", end_date: "2020-03-03", total_points: 500, done: false, user: child)

proportion_one = Proportion.new(percent: 70, goal: goal, category: chores)
proportion_two = Proportion.new(percent: 30, goal: goal, category: grades)

achievement_one = Achievement.new(due_at: "2020-02-28", achieve: false, done: false, user: child, task: task_one, points: 25)
achievement_two = Achievement.new(due_at: "2020-03-01", achieve: false, done: true, user: child, task: task_two, points: 35)
achievement_three = Achievement.new(due_at: "2020-03-01", achieve: false, done: true, user: child, task: task_three, points: 18)

# category.save
family.save
child.save
parent.save
goal.save
proportion_one.save
proportion_two.save
achievement_one.save
achievement_two.save

puts "Finish"
