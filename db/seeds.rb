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


p1 = Product.create(title: "青海湖5日深度休闲游",
                   description:"青海湖又名“库库淖尔”，即蒙语“青色的海”之意。由祁连山的大通山、日月山与青海南山之间的断层陷落形成。",
                   price:12000,
                   quantity:10
                    )
p1.photos.create!(avatar: open("https://c2-q.mafengwo.net/s7/M00/32/0E/wKgB6lO1VsuAaJy_AAGcKU4vChg47.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F90"))
p1.photos.create!(avatar: open("http://c3-q.mafengwo.net/s7/M00/31/FD/wKgB6lO1VqSAOLbpAAJWZzAM_CQ22.jpeg?imageView2%2F2%2Fw%2F700%2Fh%2F600%2Fq%2F90"))
p1.photos.create!(avatar: open("http://www.qhhly.cn/u/cms/qhh-cn/201408/07162131gpty.jpg"))
p1.photos.create!(avatar: open("http://zhonglv.zudong.com/eyjq/UpFiles/Article/2007-11/%E9%9D%92%E6%B5%B7%E6%B9%96.jpg"))


p2 = Product.create(title: "洱海3日深度休闲游",
                   description:"洱海古称“叶榆水”，也叫“西洱河”、“昆弥川”，是由西洱河塌陷形成的高原湖泊，
                                外形如同耳朵，空中俯瞰，洱海宛如一轮新月，静静地依卧在苍山和大理坝子之间。",
                   price:10000,
                   quantity:12
                    )
p2.photos.create!(avatar: open("http://img.mxmop.com/uploads/tu/bj/tp/268/3.jpg"))
p2.photos.create!(avatar: open("http://img2.utuku.china.com/646x0/news/20170322/a81a35aa-fdde-439e-b9cc-ee03705eaac0.jpg"))
p2.photos.create!(avatar: open("http://img8.zol.com.cn/bbs/upload/18656/18655980.jpg"))
p2.photos.create!(avatar: open("http://c4-q.mafengwo.net/s7/M00/96/C0/wKgB6lRpvSmAcOYUAAtXBq-LNkw38.jpeg?imageView2%2F2%2Fw%2F2000%2Fh%2F600%2Fq%2F90%7Cwatermark%2F3%2Fimage%2FaHR0cDovL2IyLXEubWFmZW5nd28ubmV0L3M5L00wMC82My84RS93S2dCczFaTmVzV0FZb29JQUFBU2JNMElpRjQyNDEucG5n%2Fgravity%2FSouthEast%2Fdx%2F20%2Fdy%2F20%2Fimage%2FaHR0cDovL2IyLXEubWFmZW5nd28ubmV0L3M5L00wMC82My84RS93S2dCczFaTmVzV0FZb29JQUFBU2JNMElpRjQyNDEucG5n%2Fgravity%2FSouthEast%2Fdx%2F20%2Fdy%2F20"))


p3 = Product.create(title: "普吉岛8日奢华游",
                   description:"普吉岛是泰国最大的海岛，以迷人的风光和丰富的旅游资源 被称为“安达曼海上的一颗明珠”。有“珍宝岛”、“金银岛”的美称。",
                   price:40000,
                   quantity:5
                    )
p3.photos.create!(avatar: open("http://210.51.56.58/fileupload/txtimage/201110111923527075.jpg"))
p3.photos.create!(avatar: open("http://otyposnews.gr/wp-content/uploads/2016/12/christmas-island-crabs-images.jpg"))
p3.photos.create!(avatar: open("http://1.bp.blogspot.com/-1Vba8Li8Kr4/TykX93vBvfI/AAAAAAAAAx8/cxB5pITzCC4/s1600/1256901265_beach-life-widescreen-wallpapers-09.jpg"))
p3.photos.create!(avatar: open("http://www.yueban.cn/ueditor/php/upload/image/20170329/1490768547227767.jpg"))

p4 = Product.create(title: "马尔代夫4晚6天自由行",
                   description:"马尔代夫",
                   price:40000,
                   quantity:5
                    )
p4.photos.create!(avatar: open("http://www.yueban.cn/upload/2017-01-23/cb12ae0daa3b0ed0467d6810d28c9540.jpg"))
p3.photos.create!(avatar: open("http://www.yueban.cn/ueditor/php/upload/image/20170324/1490334044130906.jpg"))
