# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Cloudinary::Uploader.upload("san_francisco.jpg")
# User.create(email:"giulia@gmail.com", password:"hellosoraya123", name:"giulia", bio:"Hello world", is_mentor:true)
# User.create(email:"marco@notgmail.com", password:"hellonaelle123", name:"marco", bio:"Hello world", is_mentor:false)


category = Category.create(name:"public")
file_path = File.join(Rails.root, "/app/assets/images/category-public.jpg")
category.image.attach(io: File.open(file_path), filename: "public.jpg")


category = Category.create(name:"cooking")
file_path = File.join(Rails.root, "/app/assets/images/category-cooking.jpg")
category.image.attach(io: File.open(file_path), filename: "cooking.jpg")


category = Category.create(name:"dancing")
file_path = File.join(Rails.root, "/app/assets/images/category-dancing.jpg")
category.image.attach(io: File.open(file_path), filename: "dancing.jpg")

category = Category.create(name:"yoga")
file_path = File.join(Rails.root, "/app/assets/images/category-yoga.jpg")
category.image.attach(io: File.open(file_path), filename: "yoga.jpg")



# Lesson.create(user_id:1, name:"speaking in public", description:"we will talk", duration:1, price:"40", category_id:1)

# Booking.create(date: Date.today, lesson_id:1, user_id:2)

# Review.create(title:"Very nice mentor", description:"I learnt a lot", rating:5, booking_id:1)


