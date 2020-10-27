class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]

  def index
    @lessons = Lesson.all
  end

  def show
    @user = @lesson.user
    @bookings = @lesson.bookings
    @reviews = @lesson.reviews
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(params_allowed)
    if @lesson.save
      redirect_to lesson_path(@lesson)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @lesson.update(params_allowed)
      redirect_to lesson_path(@lesson)
    else
      render 'edit'
    end
  end

  def destroy
    @lesson.destroy
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  def params_allowed
    params.require(:lesson).permit(:name, :description, :price, :duration, :category_id, :user_id)
  end
end
