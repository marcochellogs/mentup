# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Cloudinary::Uploader.upload("san_francisco.jpg")
Review.destroy_all
Booking.destroy_all
Lesson.destroy_all
Category.destroy_all
User.destroy_all


password = '123456'

puts "seeding users"
user1 = User.create(email:"mentor@gmail.com", password:password, name:"Marco Checchi", bio:"Hey there! I'm 23 years old and I'm a really good public speaker. I will teach you how to make a speech in front of 200 people and nail it!", is_mentor:true)
file_path = File.join(Rails.root, "/app/assets/images/profile-marco.jpg")
user1.photo.attach(io: File.open(file_path), filename: "picture marco.jpg")

user2 = User.create(email:"mentor1@gmail.com", password:password, name:"Soraya De Lisa", bio:"I am 36 and I am a passionate accountant. ", is_mentor:true)
file_path = File.join(Rails.root, "/app/assets/images/profile-soraya.jpg")
user2.photo.attach(io: File.open(file_path), filename: "picture soraya.jpg")
  #these 2 above have user bookings
user3 = User.create(email:"mentor2@gmail.com", password:password, name:"Naelle Burger", bio:"Hey, I'm Naelle, I am a veteran and current MBA Candidate. Sharing startup knowledge is my passion.", is_mentor:true)
file_path = File.join(Rails.root, "/app/assets/images/profile-naelle.jpg")
user3.photo.attach(io: File.open(file_path), filename: "picture Naelle.jpg")
# Mentors below have no mentor bookings
user4 = User.create(email:"mentornob@gmail.com", password:password, name:"Enrico Favaro", bio:"My main goal is to help others become better in their personal, professional and financial life.", is_mentor:true)
file_path = File.join(Rails.root, "/app/assets/images/profile-enrico.jpg")
user4.photo.attach(io: File.open(file_path), filename: "picture Enrico.jpg")
  #this above one has a user booking
user5 = User.create(email:"mentor1nob@gmail.com", password:password, name:"Michele Comolli", bio:"Hello, I am German teacher in elementary and middle school; my greatest hope is to make learning this language fun and easy for every one.", is_mentor:true)
user6 = User.create(email:"mentor2nob@gmail.com", password:password, name:"Giacomo Bonomelli", bio:"I am a Yoga Teacher and I have been teaching yoga since 2006. I love to practice yoga and love to share my skills with others.", is_mentor:true)
# Mentors below have no lesson
user7 = User.create(email:"mentornol@gmail.com", password:password, name:"Michael Tung", bio:"HI I'm a professional cook and I'm really good. I will guide you through the making of a carbonara for 20 people.", is_mentor:true)
  #this one above has 2 user bookings
user8 = User.create(email:"mentor1nol@gmail.com", password:password, name:"Lily Walch", bio:"My name is Lily! I am passionate about coding. I love to teach the code!", is_mentor:true)

# USERS id 9 - 14
user9 = User.create(email:"student@gmail.com", password:password, name:"Giulia Martinelli", bio:"Hi, I'm an eager student and I like to always learn new stuff. I pride myself in being a good listener. I look forward to meeting many cool mentors on my way to success.", is_mentor:false)
file_path = File.join(Rails.root, "/app/assets/images/profile-giulia.jpg")
user9.photo.attach(io: File.open(file_path), filename: "picture-giulia.jpg")

user11 = User.create(email:"student1@gmail.com", password:password, name:"Katrina Amor Robles", bio:"Hi, I am always looking forward to the opportunity to learn and find people who can help me reach my goals! I hope to meet many mentors that can teach me new stuff and help me achieve all my goals!", is_mentor:false)
file_path = File.join(Rails.root, "/app/assets/images/profile-cat.jpg")
user11.photo.attach(io: File.open(file_path), filename: "picture-cat.jpg")
  # tho one below has many bookings
user12 = User.create(email:"student2@gmail.com", password:password, name:"Maria Vittoria Dalla Rosa Prati", bio:"Hey, I'm Mery, I love animals and I nature. I am love to learn new stuff and meeting new people! Can't wait to improve my skills and meet new people.", is_mentor:false)
file_path = File.join(Rails.root, "/app/assets/images/profile-maria.jpg")
user12.photo.attach(io: File.open(file_path), filename: "picture-maria.jpg")
#Users below have no booking id 12-14
user13 = User.create(email:"studentnob@gmail.com", password:password, name:"Yassine Chaqroun", bio:"Hi, I'm Yassine! I am 35 and I am an amateurial singer. I am always open to gain valuable knowledge and I pride myself in being a good listener. I look forward to meeting many cool mentors on my way to success.", is_mentor:false)
user14 = User.create(email:"student1nob@gmail.com", password:password, name:"Francesco Ecclesie", bio:"Hi, I am Francesco, I am 50, I love to code and I love to learn new stuff. I look forward to meeting many cool mentors on my way to success.", is_mentor:false)
user15 = User.create(email:"student2nob@gmail.com", password:password, name:"Leonardo Dalla Via", bio:"Hi, I'm an eager student and I like to always learn new stuff. I pride myself in being a good listener. I look forward to meeting many cool mentors on my way to success.", is_mentor:false)
puts "done"

puts "seeding categories"

# 10 CATEGORIES with picture
category1 = Category.create(name:"Public Speaking")
file_path = File.join(Rails.root, "/app/assets/images/category-public.jpg")
category1.photo.attach(io: File.open(file_path), filename: "public.jpg")

category2 = Category.create(name:"Finance")
file_path = File.join(Rails.root, "/app/assets/images/category-finance.jpg")
category2.photo.attach(io: File.open(file_path), filename: "finance.jpg")

category3 = Category.create(name:"Startup and Innovation")
file_path = File.join(Rails.root, "/app/assets/images/category-startup.jpg")
category3.photo.attach(io: File.open(file_path), filename: "startup.jpg")

category4 = Category.create(name:"Self Help")
file_path = File.join(Rails.root, "/app/assets/images/category-selfhelp.jpg")
category4.photo.attach(io: File.open(file_path), filename: "selfhelp.jpg")

category5 = Category.create(name:"Languages")
file_path = File.join(Rails.root, "/app/assets/images/category-language.jpg")
category5.photo.attach(io: File.open(file_path), filename: "language.jpg")

category6 = Category.create(name:"Yoga")
file_path = File.join(Rails.root, "/app/assets/images/category-yoga.jpg")
category6.photo.attach(io: File.open(file_path), filename: "yoga.jpg")

category7 = Category.create(name:"Cooking")
file_path = File.join(Rails.root, "/app/assets/images/category-cooking.jpg")
category7.photo.attach(io: File.open(file_path), filename: "lcooking.jpg")

category8 = Category.create(name:"Dancing")
file_path = File.join(Rails.root, "/app/assets/images/category-dancing.jpg")
category8.photo.attach(io: File.open(file_path), filename: "dancing.jpg")

category9 = Category.create(name:"Painting")
file_path = File.join(Rails.root, "/app/assets/images/category-painting.jpg")
category9.photo.attach(io: File.open(file_path), filename: "painting.jpg")

category10 = Category.create(name:"Social Media")
file_path = File.join(Rails.root, "/app/assets/images/category-social.jpg")
category10.photo.attach(io: File.open(file_path), filename: "social-media.jpg")



# def assign_pic_to_users
#   #take all the users, if they are mentors
#   #user.is_mentor = true or false
#   User.all.each do |user|
#     if user.is_mentor
#       #image mentor
#       file_path = File.join(Rails.root, "/app/assets/images/teacher.png")
#       user.photo.attach(io: File.open(file_path), filename: "teacher")
#     elsif
#       #image student
#       file_path = File.join(Rails.root, "/app/assets/images/student.jpg")
#       user.photo.attach(io: File.open(file_path), filename: "student")

#     end
#   end
# end

# assign_pic_to_users


def assign_pic_to_lessons
  #take all the users, if they are students
  Lesson.all.each do |lesson|
    file_path = File.join(Rails.root, "/app/assets/images/lesson.jpg")
    lesson.photo.attach(io: File.open(file_path), filename: "lesson")
  end
end
puts "seeding lessons"


# 8 LESSONS
lesson1 = Lesson.create!(user_id: user1.id, name:"Public Speaking for Beginners", description:"This one-hour mentorship is a inspiring look at how to become a confident public speaker.", duration:1, price:"40", category_id: category1.id)
lesson2 = Lesson.create!(user_id: user2.id, name:"Take Control of Your Finances!", description:"This lesson is made for beginners who have a speech coming up and want some professional mentoring to do a great job.", duration:2, price:"60", category_id: category2.id)
lesson3 = Lesson.create!(user_id: user3.id, name:"Launching Your Startup!", description:"This one-hour class is a perfect introduction to the world of startups giving you tips to navigate this sector with confidence.", duration:2, price:"50", category_id: category3.id)
lesson4 = Lesson.create!(user_id: user4.id, name:"Self Help Series: Create Good Habtis", description:"How to maintain and create good habits, this is a very quick and to the point mentorship that goes over 16 tips to help you create and stick to good habits.", duration:1, price:"110", category_id: category4.id)
lesson5 = Lesson.create!(user_id: user5.id, name:"Learn German 1 : Guten Tag", description:"During your lesson you will learn the 5 ways of greetings in the German language and how to express yourself and say your name.", duration:3, price:"400", category_id: category5.id)
lesson6 = Lesson.create!(user_id: user6.id, name:"Learn Watercolor Painting Basics", description:"This class is for anyone that wants to learn the basics of watercoloring in order to start on their own fashion or illustration project.", duration:2, price:"80", category_id: category9.id)
lesson7 = Lesson.create!(user_id: user7.id, name:"Healing Yoga", description:"This hour yoga class teaches the health-giving alignments of 24 key Yoga-poses.", duration:1, price:"80", category_id: category6.id)
lesson8 =Lesson.create!(user_id: user8.id, name:"Inspired Cooking: Creating Dishes From Art", description:"In this 2h cooking class, we will create a dish that evokes the essence of a favorite painting.", duration:1, price:"80", category_id: category7.id)
assign_pic_to_lessons

puts "seeding bookins"


# Many BOOKINGS (14)
booking1 = Booking.create(date: DateTime.now, lesson_id: lesson1.id, user_id: user9.id) #has a review
booking2 = Booking.create(date: DateTime.now, lesson_id: lesson2.id, user_id: user11.id) #finance #has a review
booking3 = Booking.create(date: DateTime.now, lesson_id: lesson3.id, user_id: user11.id) #startup #has a review
booking4 = Booking.create(date: DateTime.now + 5.hours, lesson_id: lesson4.id, user_id: user11.id) #selfcare #has a review
booking5 = Booking.create(date: DateTime.now + 5.hours, lesson_id: lesson4.id, user_id: user11.id) #has a review
booking6 = Booking.create(date: DateTime.now + 5.hours, lesson_id: lesson4.id, user_id: user11.id) #has a review
booking7 = Booking.create(date: DateTime.now + 10.hours, lesson_id: lesson5.id, user_id: user1.id) #language #has a review
booking8 = Booking.create(date: DateTime.now + 10.hours, lesson_id: lesson5.id, user_id: user2.id) #has a review
booking9 = Booking.create(date: DateTime.now + 15.hours, lesson_id: lesson5.id, user_id: user3.id) #has a review
booking10 = Booking.create(date: DateTime.now + 22.hours, lesson_id: lesson6.id, user_id: user7.id) #painting #has a review
booking11 = Booking.create(date: DateTime.now + 25.hours, lesson_id: lesson6.id, user_id: user7.id)
booking12 = Booking.create(date: DateTime.now + 3.hours, lesson_id:lesson7.id, user_id: user11.id) #yoga #has a review
booking13 = Booking.create(date: DateTime.now + 6.hours, lesson_id:lesson8.id, user_id: user11.id) #cooking #has a review
booking14 = Booking.create(date: DateTime.now + 23.hours, lesson_id: lesson8.id, user_id: user11.id)


puts "seeding reviews"

# 12 REVIEWS
Review.create(title:"Great Mentor", description:"After this session I managed to do a great speech. I loved the one on one talks, thay were very inspiring and I got much from the experience of this guy. I highly recommend him!", rating:5, booking_id: booking1.id)
Review.create(title:"Don't take this mentor!", description:"Didn't help me at all!", rating:1, booking_id: booking2.id)
Review.create(title:"Really helpful!", description:"Already after 1 session, I gained a lot of knowledge!", rating:5, booking_id: booking3.id)
Review.create(title:"Great Mentor", description:"I can truly recommend this lesson!", rating:4, booking_id: booking4.id)
Review.create(title:"Amzing job!", description:"I can finally stand up for my rights, after 4 sessions only!", rating:5, booking_id: booking5.id)
Review.create(title:"Great Mentor", description:"Thanks to my mentor I learned to say no!", rating:3, booking_id: booking6.id)
Review.create(title:"Such a help!", description:"I had 10 lessons with my mentor and I improved a lot!", rating:5, booking_id: booking7.id)
Review.create(title:"Nice Mentor", description:"It was a super nice afternoon while improving my german!", rating:4, booking_id: booking8.id)
Review.create(title:"Helped me", description:"Thanks to my mentor I can make an order in french! Though he was not really nice", rating:3, booking_id: booking9.id)
Review.create(title:"Disappointed!", description:"My mentor was not helpful at all! Didn't learn any new skills", rating:1, booking_id: booking10.id)
Review.create(title:"Nice cooking session", description:"Thanks to my super nice mentor, I could surprise my family with a new recipe! It was a super nice evening!", rating:4, booking_id: booking13.id)
Review.create(title:"Best decision", description:"I am so happy with my yoga teacher, relaxed me a lot!", rating:5, booking_id: booking12.id)





