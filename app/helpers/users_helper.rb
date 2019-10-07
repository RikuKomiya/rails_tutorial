module UsersHelper
  def mon(period,sem)
    current_user.course_mon(period,sem)
  end
  def tue(period,sem)
    current_user.course_tue(period,sem)
  end
  def wed(period,sem)
    current_user.course_wed(period,sem)
  end
  def thu(period,sem)
    current_user.course_thu(period,sem)
  end
  def fri(period,sem)
    current_user.course_fri(period,sem)
  end
  def sat(period,sem)
    current_user.course_sat(period,sem)
  end

  def spring
    if @current_sem == 0
      return "current"
    else
      return "pre"
    end
  end

  def fall
    if @current_sem == 1
      return "current"
    else
      return "pre"
    end
  end
end
