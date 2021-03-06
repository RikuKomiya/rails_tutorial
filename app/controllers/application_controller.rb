class ApplicationController < ActionController::Base


  private
  def current_sem
    @today = Time.current
    spring_sem = [4,5,6,7,8]
    fall_sem = [1,9,10,11,12]
    if spring_sem.include?(@today.month)
      0
    elsif fall_sem.include?(@today.month)
      1
    end
  end


  def current_wday
    @today = Time.current
    @today.wday
  end

  def owner_only
    redirect_to root_url unless current_user.owner?
  end
end
