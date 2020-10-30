class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @categories = Category.all
  end

  def profile
    @user = current_user
    @bookings = current_user.bookings # user bookings of many mentor_lessons
    @lessons = current_user.lessons # lessons booked as a user
    if current_user.is_mentor
      @mentor_lesson = current_user.lesson # your lesson as a mentor
      if @mentor_bookings != nil
        @mentor_bookings = @mentor_lesson.bookings # mentor bookings of your lesson
      end
    end
  end
end

