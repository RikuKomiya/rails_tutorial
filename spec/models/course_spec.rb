require 'rails_helper'

RSpec.describe Course, type: :model do
before do
  @course = FactoryBot.create(:course)
  end

  it "should regist course" do
    expect(FactoryBot.build(:course)).to be_valid
  end

  it " arrow course to duplicate only course_name" do
    expect(FactoryBot.create(:course, professor: "金子")).to be_valid
  end

  it "arrow course to duplicate only professor" do
    expect(FactoryBot.create(:course,course_name:"経済行動学")).to be_valid
  end

  it "does not arrow course to duplicate same one" do

    expect{FactoryBot.create(:course)}.to raise_error(ActiveRecord::RecordNotUnique)
  end

  
  describe "#search" do
    before do
      @course2 = FactoryBot.create(:course, course_name:"環境ビジネス",sem: "0")
      @course3 = FactoryBot.create(:course, course_name:"マネジメント理論",
                                   professor:"羽田",sem:"1",wday:"2",period:"4")
    end
    context "input course_name" do
      it 'should get courses by course_name' do
        expect(Course.search(course_name:  "経済学")).to include @course
      end
    end
    context "input professor" do
      it 'should get courses by professor' do
        expect(Course.search(professor: "岸下")).to include @course
      end
    end
    context "input sem" do
      it 'should get courses by sem' do
        expect(Course.search(sem: "1")).to include @course

      end
      it 'should not get courses by other sem' do
        expect(Course.search(sem:"1")).not_to include @course2

      end
    end
    context "input wday" do
      it 'should get courses by wday' do
        expect(Course.search(wday: "1")).to include @course

      end
      it 'should not get courses by other wday' do
        expect(Course.search(wday: "1")).not_to include @course3
      end
    end
    context "input period" do
      it 'should get courses by period' do
        expect(Course.search(period: "1")).to include @course
      end
      it 'should not get courses by other period' do
        expect(Course.search(period: "1")).not_to include @course3
      end
    end
    context "input sem and wday and period" do
      it 'should get courses by these' do
        expect(Course.search(wday:"1",sem:"1",period:"1")).to include @course
      end
      it 'should not get other courses by these' do
        expect(Course.search(wday:"1",sem:"1",period:"1")).not_to include @course2
        expect(Course.search(wday:"1",sem:"1",period:"1")).not_to include @course3
      end
    end
  end
end
