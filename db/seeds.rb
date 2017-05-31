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

# 新建分类
#1
Category.create!(
 name: '海岛'
)

#2
Category.create!(
 name: '湖泊'
)

#3
Category.create!(
 name: '水上城'
)

# 4
Category.create!(
 name: '山沟谷地'
)


# 新建商品
#1
p1 = Product.create(title: "青海湖5日深度休闲游",
                   description: "青海湖又名“库库淖尔”，即蒙语“青色的海”之意。由祁连山的大通山、日月山与青海南山之间的断层陷落形成。",
                   price: 12000,
                   quantity: 10,
                   category_id: 2
                    )
p1.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%9D%92%E6%B5%B7%E6%B9%961.jpg"))
p1.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%9D%92%E6%B5%B7%E6%B9%962.jpg"))
p1.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%9D%92%E6%B5%B7%E6%B9%963.jpg"))
p1.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%9D%92%E6%B5%B7%E6%B9%964.jpg"))

#2
p2 = Product.create(title: "洱海3日深度休闲游",
                   description: "洱海古称“叶榆水”，也叫“西洱河”、“昆弥川”，是由西洱河塌陷形成的高原湖泊，
                                外形如同耳朵，空中俯瞰，洱海宛如一轮新月，静静地依卧在苍山和大理坝子之间。",
                   price: 10000,
                   quantity: 12,
                   category_id: 2
                    )
p2.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%B4%B1%E6%B5%B71.jpg"))
p2.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%B4%B1%E6%B5%B72.jpg"))
p2.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%B4%B1%E6%B5%B73.jpg"))
p2.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%B4%B1%E6%B5%B74.jpeg"))

#3
p3 = Product.create(title: "普吉岛8日奢华游",
                   description: "普吉岛是泰国最大的海岛，以迷人的风光和丰富的旅游资源 被称为“安达曼海上的一颗明珠”。有“珍宝岛”、“金银岛”的美称。",
                   price: 40000,
                   quantity: 5,
                   category_id: 1
                    )
p3.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%99%AE%E5%90%89%E5%B2%9B1.jpg"))
p3.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%99%AE%E5%90%89%E5%B2%9B2.jpg"))
p3.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%99%AE%E5%90%89%E5%B2%9B3.jpg"))
p3.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%99%AE%E5%90%89%E5%B2%9B4.jpg"))

#4
p4 = Product.create(title: "马尔代夫6日自由行",
                   description: "马尔代夫位于斯里兰卡南方浩瀚的印度洋上，大大小小千余座珊瑚岛如珍珠散落在赤道两侧，被称为印度洋上人间最后的乐园。",
                   price: 40000,
                   quantity: 5,
                   category_id: 1
                    )
p4.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%A9%AC%E5%B0%94%E4%BB%A3%E5%A4%AB1.png"))
p4.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%A9%AC%E5%B0%94%E4%BB%A3%E5%A4%AB2.jpg"))
p4.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%A9%AC%E5%B0%94%E4%BB%A3%E5%A4%AB3.jpeg"))
p4.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%A9%AC%E5%B0%94%E4%BB%A3%E5%A4%AB4.jpg"))

#5
p5 = Product.create(title: "茶卡盐湖5日自由行",
                   description: "茶卡盐湖是柴达木盆地有名的天然结晶盐湖，中国的“天空之镜”，盐产量可供全国人民使用约75年。",
                   price: 20000,
                   quantity: 8,
                   category_id: 2
                    )
p5.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E8%8C%B6%E5%8D%A1%E7%9B%90%E6%B9%962.jpg"))
p5.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E8%8C%B6%E5%8D%A1%E7%9B%90%E6%B9%961.jpg"))
p5.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E8%8C%B6%E5%8D%A1%E7%9B%90%E6%B9%963.jpg"))
p5.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E8%8C%B6%E5%8D%A1%E7%9B%90%E6%B9%964.jpg"))

#6
p6 = Product.create(title: "九寨沟7天休闲游",
                   description: "九寨的水，是蒙胧神秘的。五彩池，就像一块五彩的宝石，幽绿中透着蓝，蓝中泛着橙、橙中映着赤、赤中蕴着黄，斑斓耀眼，摄人心魄。",
                   price: 30000,
                   quantity: 10,
                   category_id: 4
                    )
p6.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E4%B9%9D%E5%AF%A8%E6%B2%9F1.jpg"))
p6.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E4%B9%9D%E5%AF%A8%E6%B2%9F2.jpg"))
p6.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E4%B9%9D%E5%AF%A8%E6%B2%9F3.png"))
p6.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E4%B9%9D%E5%AF%A8%E6%B2%9F4.jpg"))

#7
p7 = Product.create(title: "抚仙湖3日休闲行",
                   description: "抚仙湖，因湖水清澈见底、晶莹剔透，被古人称为“琉璃万顷”。",
                   price: 25000,
                   quantity: 10,
                   category_id: 2
                    )
p7.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%8A%9A%E4%BB%99%E6%B9%961.jpg"))
p7.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%8A%9A%E4%BB%99%E6%B9%962.jpg"))
p7.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%8A%9A%E4%BB%99%E6%B9%963.jpg"))
p7.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%8A%9A%E4%BB%99%E6%B9%964.jpg"))

#8
p8 = Product.create(title: "威尼斯7日奢华游",
                   description: "威尼斯贵为水上之城本身就是一个水上艺术品，在这里任意一个建筑物的美感都离不开水。
                   身处威尼斯，你就像站在正演出的舞台之上，路边音乐家演奏的古典音乐就像是演出配乐，来回的形形色色的人们就像是演员，而你正好赶上这威尼斯剧目的上演。",
                   price: 50000,
                   quantity: 10,
                   category_id: 3
                    )
p8.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E5%A8%81%E5%B0%BC%E6%96%AF1.jpg"))
p8.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E5%A8%81%E5%B0%BC%E6%96%AF2.jpg"))
p8.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E5%A8%81%E5%B0%BC%E6%96%AF3.jpg"))
p8.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E5%A8%81%E5%B0%BC%E6%96%AF4.jpeg"))

#9
p9 = Product.create(title: "阿马尔菲3日休闲游",
                   description: "阿马尔菲位于意大利南部那不勒斯附近，是一座在海边的小城，整座城市沿着海岸边的山崖修建，有陡峭的地形和独具特色的建筑。",
                   price: 18000,
                   quantity: 10,
                   category_id: 3
                    )
p9.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%98%BF%E9%A9%AC%E5%B0%94%E8%8F%B24.jpg"))
p9.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%98%BF%E9%A9%AC%E5%B0%94%E8%8F%B21.jpg"))
p9.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%98%BF%E9%A9%AC%E5%B0%94%E8%8F%B22.jpg"))
p9.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%98%BF%E9%A9%AC%E5%B0%94%E8%8F%B23.jpg"))

#10
p10 = Product.create(title: "外伶仃岛2日深度休闲游",
                   description: "外伶仃岛是中国唯一能看到香港市区的海岛，气候四季如春，岛内的伶仃湾、塔湾和大东湾三处沙滩质量最高。",
                   price: 10000,
                   quantity: 10,
                   category_id: 1
                    )
p10.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E5%A4%96%E4%BC%B6%E4%BB%83%E5%B2%9B1.jpeg"))
p10.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E5%A4%96%E4%BC%B6%E4%BB%83%E5%B2%9B2.jpeg"))
p10.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E5%A4%96%E4%BC%B6%E4%BB%83%E5%B2%9B3.jpg"))
p10.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E5%A4%96%E4%BC%B6%E4%BB%83%E5%B2%9B4.jpg"))

#11
p11 = Product.create(title: "乌镇7日休闲游",
                   description: "古镇民居临河而建、傍桥而市，镇内民风纯朴，是江南水乡“小桥、流水、人家”的典范。",
                   price: 15000,
                   quantity: 10,
                   category_id: 3
                    )
p11.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E4%B9%8C%E9%95%871.jpg"))
p11.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E4%B9%8C%E9%95%872.jpg"))
p11.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E4%B9%8C%E9%95%873.jpeg"))
p11.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E4%B9%8C%E9%95%874.jpg"))

#12
p12 = Product.create(title: "鼓浪屿5日休闲游",
                   description: "鼓浪屿上冈峦起伏，碧波、白云、绿树交相辉映，处处给人以整洁幽静的感觉。",
                   price: 10000,
                   quantity: 12,
                   category_id: 1
                    )
p12.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%BC%93%E6%B5%AA%E5%B1%BF1.jpg"))
p12.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%BC%93%E6%B5%AA%E5%B1%BF2.jpg"))
p12.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%BC%93%E6%B5%AA%E5%B1%BF3.jpg"))
p12.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%BC%93%E6%B5%AA%E5%B1%BF4.jpg"))

# p13 = Product.create(title: "SPEEDBOAT ADVENTURE",
#                    description:"鼓浪屿上冈峦起伏，碧波、白云、绿树交相辉映，处处给人以整洁幽静的感觉。",
#                    price:10000,
#                    quantity:12
#                     )
# p13.photos.create!(avatar: open("https://ws1.sinaimg.cn/large/006tNbRwgy1fg32hlb6gjj30zk0hwdnu.jpg"))
#
#
# p14 = Product.create(title: "",
#                    description:"鼓浪屿上冈峦起伏，碧波、白云、绿树交相辉映，处处给人以整洁幽静的感觉。",
#                    price:10000,
#                    quantity:12
#                     )
# p14.photos.create!(avatar: open("https://ws2.sinaimg.cn/large/006tNbRwgy1fg32kzsrnyj30i40c3jyh.jpg"))
#
# p15 = Product.create(title: "",
#                    description:"鼓浪屿上冈峦起伏，碧波、白云、绿树交相辉映，处处给人以整洁幽静的感觉。",
#                    price:10000,
#                    quantity:12
#                     )
# p15.photos.create!(avatar: open("https://static.wixstatic.com/media/1f07f07c5c64ce8093bc4513e3d5d641.jpg"))
