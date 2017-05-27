# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u = User.new
u.email = "admin@test.com"           # 可以改成自己的 email

u.password = "123456"                # 最少要六码

u.password_confirmation = "123456"   # 最少要六码

u.is_admin = true
u.save

p1 = Product.create(title: "青海湖8日深度休闲游",
                   description:"青海湖又名“库库淖尔”，即蒙语“青色的海”之意。由祁连山的大通山、日月山与青海南山之间的断层陷落形成。",
                   price:10000,
                   quantity:10
                    )
p1.photos.create!(avatar: open("https://c2-q.mafengwo.net/s7/M00/32/0E/wKgB6lO1VsuAaJy_AAGcKU4vChg47.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F90"))
p1.photos.create!(avatar: open("http://c3-q.mafengwo.net/s7/M00/31/FD/wKgB6lO1VqSAOLbpAAJWZzAM_CQ22.jpeg?imageView2%2F2%2Fw%2F700%2Fh%2F600%2Fq%2F90"))
p1.photos.create!(avatar: open("http://www.qhhly.cn/u/cms/qhh-cn/201408/07162131gpty.jpg"))
p1.photos.create!(avatar: open("http://zhonglv.zudong.com/eyjq/UpFiles/Article/2007-11/%E9%9D%92%E6%B5%B7%E6%B9%96.jpg"))
