# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email:"giulia@gmail.com", password:"hellosoraya123", name:"giulia", is_mentor:true)
User.create(email:"marco@notgmail.com", password:"hellonaelle123", name:"marco", is_mentor:false)
Category.create(name:"public")
Lesson.create(user_id:1, name:"speaking in public", description:"we will talk", duration:1, category_id:1)
Booking.create(date: Date.today, lesson_id:1, user_id:2)
Review.create(title:"Very nice mentor", description:"I learnt a lot", rating:5, booking_id:1)
