require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = User.create(email:"riku@gmail.com",password: "password")
    @course = Course.create(course_name:"経済学",period: 1, wday: 1,sem:1,
                         professor:"岸下")
    @user.take_courses(@course)
  end


  it "returns course monday" do
    expect(@user.course_mon(1)).to eq @course
  end


end
