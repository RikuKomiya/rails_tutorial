# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def CC (course_name,professor,period,wday,sem,major)
  Course.create(course_name:course_name,professor:professor,
                period:period,wday:wday,sem:sem,major:major)
end

def mh(course_name,professor,period)
  sem=1
  major="management"
  w = 1
  Course.create(course_name:course_name,professor:professor,
                period:period,wday:w,sem:sem,major:major)
end

p =1

mh("経営学のための数学","山口",1)
mh("ビジネス概論A","西山",2)
mh("ビジネス概論A","松本",2)
mh("ビジネス概論A","佐々木",2)
mh("異文化コミュニケーション論","菅野",2)
mh("コミュニケーションリサーチ","菅野",3)
mh("マーケティングセオリー","有馬",3)
mh("ワークショップ演習H","岩下",3)
mh("国際経営論","尾崎",4)
mh("グッド・ビジネス・ワークショップ","倉持",4)
mh("ファイナンスのための数学","柿中" ,4)
mh("経営史","斎藤",5)
mh("マーケティングコミュニケーション","井上",5)




