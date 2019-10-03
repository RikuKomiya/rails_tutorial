module UsersHelper
  def mon(period)
    current_user.course_mon(period)
  end
  def tue(period)
    current_user.course_tue(period)
  end
  def wed(period)
    current_user.course_wed(period)
  end
  def thu(period)
    current_user.course_thu(period)
  end
  def fri(period)
    current_user.course_fri(period)
  end
  def sat(period)
    current_user.course_sat(period)
  end

end
