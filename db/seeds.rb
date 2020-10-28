# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Cloudinary::Uploader.upload("san_francisco.jpg")

password = '123456'

# MENTORS id 1-8
User.create(email:"mentor@gmail.com", password:password, name:"Giulia Martinelli", bio:"HI I'm a public speaker and I'm really good. I will teach you how to make a speach in front of 200 people and nail it.", is_mentor:true)
User.create(email:"mentor1@gmail.com", password:password, name:"Marco Checchi", bio:"HI I'm a public speaker and I'm really good. I will teach you how to make a speach in front of 200 people and nail it.", is_mentor:true)
  #these 2 above have user bookings
User.create(email:"mentor2@gmail.com", password:password, name:"Naelle Burger", bio:"HI I'm a public speaker and I'm really good. I will teach you how to make a speach in front of 200 people and nail it.", is_mentor:true)
# Mentors below have no mentor bookings
User.create(email:"mentornob@gmail.com", password:password, name:"Soraya De Lisa", bio:"HI I'm a public speaker and I'm really good. I will teach you how to make a speach in front of 200 people and nail it.", is_mentor:true)
  #this above one has a user booking
User.create(email:"mentor1nob@gmail.com", password:password, name:"Franco Amilcare", bio:"HI I'm a public speaker and I'm really good. I will teach you how to make a speach in front of 200 people and nail it.", is_mentor:true)
User.create(email:"mentor2nob@gmail.com", password:password, name:"Antonio Malonio", bio:"HI I'm a public speaker and I'm really good. I will teach you how to make a speach in front of 200 people and nail it.", is_mentor:true)
# Mentors below have no lesson
User.create(email:"mentornol@gmail.com", password:password, name:"Franco Amilcare", bio:"HI I'm a public speaker and I'm really good. I will teach you how to make a speach in front of 200 people and nail it.", is_mentor:true)
  #this one above has 2 user bookings
User.create(email:"mentor1nol@gmail.com", password:password, name:"Antonio Malonio", bio:"HI I'm a public speaker and I'm really good. I will teach you how to make a speach in front of 200 people and nail it.", is_mentor:true)

# USERS id 9 - 14
User.create(email:"student@gmail.com", password:password, name:"Marco Student", bio:"Hi, I'm an eager student and I like to always learn new stuff. I pride myself in being a good listener. I look forward to meeting many cool mentors on my way to success", is_mentor:false)
User.create(email:"student1@gmail.com", password:password, name:"Giulia Student", bio:"Hi, I'm an eager student and I like to always learn new stuff. I pride myself in being a good listener. I look forward to meeting many cool mentors on my way to success", is_mentor:false)
  # tho one below has many bookings
User.create(email:"student2@gmail.com", password:password, name:"Naelle Student", bio:"Hi, I'm an eager student and I like to always learn new stuff. I pride myself in being a good listener. I look forward to meeting many cool mentors on my way to success", is_mentor:false)
  # Users below have no booking id 12-14
User.create(email:"studentnob@gmail.com", password:password, name:"Soraya Student", bio:"Hi, I'm an eager student and I like to always learn new stuff. I pride myself in being a good listener. I look forward to meeting many cool mentors on my way to success", is_mentor:false)
User.create(email:"student1nob@gmail.com", password:password, name:"Fraco Student", bio:"Hi, I'm an eager student and I like to always learn new stuff. I pride myself in being a good listener. I look forward to meeting many cool mentors on my way to success", is_mentor:false)
User.create(email:"student2nob@gmail.com", password:password, name:"Antonio Student", bio:"Hi, I'm an eager student and I like to always learn new stuff. I pride myself in being a good listener. I look forward to meeting many cool mentors on my way to success", is_mentor:false)

# 4 CATEGORIES with picture
Category.create(name:"Public Speaking")
Category.create(name:"Finance")
Category.create(name:"Startup and Innovation")
Category.create(name:"Self Help")
Category.create(name:"Languages")

# 6 LESSONS
Lesson.create(user_id:1, name:"Public speaking for beginners", description:"This lesson is made for beginners who have a speech coming up and want some professional mentoring to do a great job", duration:1, price:"40", category_id:1)
Lesson.create(user_id:2, name:"How to sell online and get rich fast", description:"This lesson is made for beginners who have a speech coming up and want some professional mentoring to do a great job", duration:2, price:"60", category_id:2)
Lesson.create(user_id:3, name:"Launching your startup!", description:"This lesson is made for beginners who have a speech coming up and want some professional mentoring to do a great job", duration:2, price:"50", category_id:3)
Lesson.create(user_id:4, name:"How to gain confidence in your skills", description:"This lesson is made for beginners who have a speech coming up and want some professional mentoring to do a great job", duration:1, price:"110", category_id:4)
Lesson.create(user_id:5, name:"Learn Italian in 1 month", description:"This lesson is made for beginners who have a speech coming up and want some professional mentoring to do a great job", duration:3, price:"400", category_id:5)
Lesson.create(user_id:6, name:"Mastering public speaking", description:"This lesson is made for beginners who have a speech coming up and want some professional mentoring to do a great job", duration:1, price:"80", category_id:1)

# Many BOOKINGS
Booking.create(date: Date.today, lesson_id:1, user_id:9)
Booking.create(date: Date.today, lesson_id:2, user_id:10)
Booking.create(date: Date.today, lesson_id:3, user_id:11) #has a review
Booking.create(date: Date.today, lesson_id:1, user_id:11)
Booking.create(date: Date.today, lesson_id:2, user_id:11) #has a review
Booking.create(date: Date.today, lesson_id:3, user_id:11)
Booking.create(date: Date.today, lesson_id:2, user_id:1) #has a review
Booking.create(date: Date.today, lesson_id:1, user_id:2)
Booking.create(date: Date.today, lesson_id:1, user_id:4)
Booking.create(date: Date.today, lesson_id:2, user_id:7)
Booking.create(date: Date.today, lesson_id:1, user_id:7)

# 3 REVIEWS
Review.create(title:"great Mentor", description:"After this session I managed to do a great speech. I loved the one on one talks, thay were very inspiring and I got much from the experience of this guy. I highly recommend him!", rating:5, booking_id:3)
Review.create(title:"great Mentor", description:"After this session I managed to do a great speech. I loved the one on one talks, thay were very inspiring and I got much from the experience of this guy. I highly recommend him!", rating:5, booking_id:5)
Review.create(title:"great Mentor", description:"After this session I managed to do a great speech. I loved the one on one talks, thay were very inspiring and I got much from the experience of this guy. I highly recommend him!", rating:5, booking_id:7)
