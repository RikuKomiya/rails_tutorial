class StaticPagesController < ApplicationController
  before_action :set_today
  def home
    @current_courses = @current_courses || Course.where(sem: current_sem, wday: current_wday)
  end

  def help
  end

  def about
  end

  def contact

  end

  def set_today
    @today = Time.current
  end
  private

  def current_sem

    spring_sem = 4||5||6||7||8
    fall_sem = 1||9||10||11||12
    if @today.month == spring_sem
       0
    elsif @today.month == fall_sem
       1
    end
  end

  def current_period

  end

  def current_wday

    @today.wday
  end


end
