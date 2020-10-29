class LessonsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]

  def index
    @lessons = params[:query].present? ? Lesson.search_by_name_and_description(params[:query]) : Lesson.all
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
    raise
    @lesson = Lesson.new(params_allowed)
    @lesson.user = current_user
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
    redirect_to lessons_path
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  def params_allowed
    params.require(:lesson).permit(:name, :description, :price, :duration, :category_id, :photo)
  end
end
