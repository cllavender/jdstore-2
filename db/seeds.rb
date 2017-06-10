# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# #新建用户
# # 1
# u1 = User.new
# u1.email = "admin@test.com"           # 可以改成自己的 email
# u1.password = "123456"                # 最少要六码
# u1.password_confirmation = "123456"   # 最少要六码
# u1.is_admin = true
# u1.save
# 2
u2 = User.new
u2.email = "test1@163.com"           # 可以改成自己的 email
u2.password = "123456"                # 最少要六码
u2.password_confirmation = "123456"   # 最少要六码
u2.save
# 3
u3 = User.new
u3.email = "test2@163.com"           # 可以改成自己的 email
u3.password = "123456"                # 最少要六码
u3.password_confirmation = "123456"   # 最少要六码
u3.save
# 4
u4 = User.new
u4.email = "test3@163.com"           # 可以改成自己的 email
u4.password = "123456"                # 最少要六码
u4.password_confirmation = "123456"   # 最少要六码
u4.save
#
#
# # 新建分类
# #1
# Category.create!(
#  name: '听海'
# )
# #2
# Category.create!(
#  name: '寻湖'
# )
# #3
# Category.create!(
#  name: '游城'
# )
# # 4
# Category.create!(
#  name: '踏浪'
# )
#
#
# # 新建商品
# #1
# p1 = Product.create(title: "青海湖5日深度休闲游",
#                    description: "青海湖又名“库库淖尔”，即蒙语“青色的海”之意。由祁连山的大通山、日月山与青海南山之间的断层陷落形成。",
#                    price: 12000,
#                    quantity: 10,
#                    child_price: 6000,
#                    child_quantity: 4,
#                    destination: "青海湖",
#                    day: 5,
#                    night: 4,
#                    category_id: 2
#                     )
# p1.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%9D%92%E6%B5%B7%E6%B9%961.jpg"))
# p1.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%9D%92%E6%B5%B7%E6%B9%962.jpg"))
# p1.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%9D%92%E6%B5%B7%E6%B9%963.jpg"))
# p1.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%9D%92%E6%B5%B7%E6%B9%964.jpg"))
#
# #2
# p2 = Product.create(title: "洱海3日深度休闲游",
#                    description: "洱海古称“叶榆水”，也叫“西洱河”、“昆弥川”，是由西洱河塌陷形成的高原湖泊，
#                                 外形如同耳朵，空中俯瞰，洱海宛如一轮新月，静静地依卧在苍山和大理坝子之间。",
#                    price: 10000,
#                    quantity: 12,
#                    child_price: 5000,
#                    child_quantity: 6,
#                    destination: "洱海",
#                    day: 3,
#                    night: 2,
#                    category_id: 2
#                     )
# p2.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%B4%B1%E6%B5%B71.jpg"))
# p2.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%B4%B1%E6%B5%B72.jpg"))
# p2.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%B4%B1%E6%B5%B73.jpg"))
# p2.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%B4%B1%E6%B5%B74.jpeg"))
#
# #3
# p3 = Product.create(title: "普吉岛8日奢华游",
#                    description: "普吉岛是泰国最大的海岛，以迷人的风光和丰富的旅游资源 被称为“安达曼海上的一颗明珠”。有“珍宝岛”、“金银岛”的美称。",
#                    price: 40000,
#                    quantity: 5,
#                    child_price: 20000,
#                    child_quantity: 2,
#                    destination: "普吉岛",
#                    day: 8,
#                    night: 7,
#                    category_id: 1
#                     )
# p3.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%99%AE%E5%90%89%E5%B2%9B1.jpg"))
# p3.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%99%AE%E5%90%89%E5%B2%9B2.jpg"))
# p3.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%99%AE%E5%90%89%E5%B2%9B3.jpg"))
# p3.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%99%AE%E5%90%89%E5%B2%9B4.jpg"))
#
# #4
# p4 = Product.create(title: "马尔代夫6日自由行",
#                    description: "马尔代夫位于斯里兰卡南方浩瀚的印度洋上，大大小小千余座珊瑚岛如珍珠散落在赤道两侧，被称为印度洋上人间最后的乐园。",
#                    price: 40000,
#                    quantity: 5,
#                    child_price: 20000,
#                    child_quantity: 2,
#                    destination: "马尔代夫",
#                    day: 6,
#                    night: 5,
#                    category_id: 1
#                     )
# p4.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%A9%AC%E5%B0%94%E4%BB%A3%E5%A4%AB1.png"))
# p4.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%A9%AC%E5%B0%94%E4%BB%A3%E5%A4%AB2.jpg"))
# p4.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%A9%AC%E5%B0%94%E4%BB%A3%E5%A4%AB3.jpeg"))
# p4.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%A9%AC%E5%B0%94%E4%BB%A3%E5%A4%AB4.jpg"))
#
# #5
# p5 = Product.create(title: "茶卡盐湖5日自由行",
#                    description: "茶卡盐湖是柴达木盆地有名的天然结晶盐湖，中国的“天空之镜”，盐产量可供全国人民使用约75年。",
#                    price: 20000,
#                    quantity: 8,
#                    child_price: 10000,
#                    child_quantity: 4,
#                    destination: "茶卡盐湖",
#                    day: 5,
#                    night: 4,
#                    category_id: 2
#                     )
# p5.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E8%8C%B6%E5%8D%A1%E7%9B%90%E6%B9%962.jpg"))
# p5.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E8%8C%B6%E5%8D%A1%E7%9B%90%E6%B9%961.jpg"))
# p5.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E8%8C%B6%E5%8D%A1%E7%9B%90%E6%B9%963.jpg"))
# p5.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E8%8C%B6%E5%8D%A1%E7%9B%90%E6%B9%964.jpg"))
#
# #6
# p6 = Product.create(title: "九寨沟7天休闲游",
#                    description: "九寨的水，是蒙胧神秘的。五彩池，就像一块五彩的宝石，幽绿中透着蓝，蓝中泛着橙、橙中映着赤、赤中蕴着黄，斑斓耀眼，摄人心魄。",
#                    price: 30000,
#                    quantity: 10,
#                    child_price: 15000,
#                    child_quantity: 4,
#                    destination: "九寨沟",
#                    day: 7,
#                    night: 6,
#                    category_id: 4
#                     )
# p6.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E4%B9%9D%E5%AF%A8%E6%B2%9F1.jpg"))
# p6.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E4%B9%9D%E5%AF%A8%E6%B2%9F2.jpg"))
# p6.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E4%B9%9D%E5%AF%A8%E6%B2%9F3.png"))
# p6.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E4%B9%9D%E5%AF%A8%E6%B2%9F4.jpg"))
#
# #7
# p7 = Product.create(title: "抚仙湖3日休闲行",
#                    description: "抚仙湖，因湖水清澈见底、晶莹剔透，被古人称为“琉璃万顷”。",
#                    price: 25000,
#                    quantity: 10,
#                    child_price: 15000,
#                    child_quantity: 6,
#                    destination: "抚仙湖",
#                    day: 3,
#                    night: 2,
#                    category_id: 2
#                     )
# p7.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%8A%9A%E4%BB%99%E6%B9%961.jpg"))
# p7.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%8A%9A%E4%BB%99%E6%B9%962.jpg"))
# p7.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%8A%9A%E4%BB%99%E6%B9%963.jpg"))
# p7.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%8A%9A%E4%BB%99%E6%B9%964.jpg"))
# #8
# p8 = Product.create(title: "威尼斯7日奢华游",
#                    description: "威尼斯贵为水上之城本身就是一个水上艺术品，在这里任意一个建筑物的美感都离不开水。
#                    身处威尼斯，你就像站在正演出的舞台之上，路边音乐家演奏的古典音乐就像是演出配乐，来回的形形色色的人们就像是演员，而你正好赶上这威尼斯剧目的上演。",
#                    price: 50000,
#                    quantity: 10,
#                    child_price: 25000,
#                    child_quantity: 4,
#                    destination: "威尼斯",
#                    day: 7,
#                    night: 6,
#                    category_id: 3
#                     )
# p8.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E5%A8%81%E5%B0%BC%E6%96%AF1.jpg"))
# p8.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E5%A8%81%E5%B0%BC%E6%96%AF2.jpg"))
# p8.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E5%A8%81%E5%B0%BC%E6%96%AF3.jpg"))
# p8.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E5%A8%81%E5%B0%BC%E6%96%AF4.jpeg"))
#
# #9
# p9 = Product.create(title: "阿马尔菲3日休闲游",
#                    description: "阿马尔菲位于意大利南部那不勒斯附近，是一座在海边的小城，整座城市沿着海岸边的山崖修建，有陡峭的地形和独具特色的建筑。",
#                    price: 18000,
#                    quantity: 10,
#                    child_price: 9000,
#                    child_quantity: 6,
#                    destination: "阿马尔菲",
#                    day: 3,
#                    night: 2,
#                    category_id: 3
#                     )
# p9.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%98%BF%E9%A9%AC%E5%B0%94%E8%8F%B24.jpg"))
# p9.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%98%BF%E9%A9%AC%E5%B0%94%E8%8F%B21.jpg"))
# p9.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%98%BF%E9%A9%AC%E5%B0%94%E8%8F%B22.jpg"))
# p9.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%98%BF%E9%A9%AC%E5%B0%94%E8%8F%B23.jpg"))
# #10
# p10 = Product.create(title: "外伶仃岛2日深度休闲游",
#                    description: "外伶仃岛是中国唯一能看到香港市区的海岛，气候四季如春，岛内的伶仃湾、塔湾和大东湾三处沙滩质量最高。",
#                    price: 10000,
#                    quantity: 10,
#                    child_price: 6000,
#                    child_quantity: 10,
#                    destination: "外伶仃岛",
#                    day: 2,
#                    night: 1,
#                    category_id: 1
#                     )
# p10.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E5%A4%96%E4%BC%B6%E4%BB%83%E5%B2%9B1.jpeg"))
# p10.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E5%A4%96%E4%BC%B6%E4%BB%83%E5%B2%9B2.jpeg"))
# p10.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E5%A4%96%E4%BC%B6%E4%BB%83%E5%B2%9B3.jpg"))
# p10.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E5%A4%96%E4%BC%B6%E4%BB%83%E5%B2%9B4.jpg"))
#
# #11
# p11 = Product.create(title: "乌镇7日休闲游",
#                    description: "古镇民居临河而建、傍桥而市，镇内民风纯朴，是江南水乡“小桥、流水、人家”的典范。",
#                    price: 15000,
#                    quantity: 10,
#                    child_price: 9000,
#                    child_quantity: 6,
#                    destination: "乌镇",
#                    day: 7,
#                    night: 6,
#                    category_id: 3
#                     )
# p11.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E4%B9%8C%E9%95%871.jpg"))
# p11.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E4%B9%8C%E9%95%872.jpg"))
# p11.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E4%B9%8C%E9%95%873.jpeg"))
# p11.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E4%B9%8C%E9%95%874.jpg"))
#
# #12
# p12 = Product.create(title: "鼓浪屿5日休闲游",
#                    description: "鼓浪屿上冈峦起伏，碧波、白云、绿树交相辉映，处处给人以整洁幽静的感觉。",
#                    price: 10000,
#                    quantity: 12,
#                    child_price: 5000,
#                    child_quantity: 6,
#                    destination: "鼓浪屿",
#                    day: 5,
#                    night: 4,
#                    category_id: 1
#                     )
# p12.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%BC%93%E6%B5%AA%E5%B1%BF1.jpg"))
# p12.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%BC%93%E6%B5%AA%E5%B1%BF2.jpg"))
# p12.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%BC%93%E6%B5%AA%E5%B1%BF3.jpg"))
# p12.photos.create!(avatar: open("http://oqjdhoq9e.bkt.clouddn.com/%E9%BC%93%E6%B5%AA%E5%B1%BF4.jpg"))
#

#新建游记
# 1
# n1 = Note.create(foreword: "梦里水乡，诗里江南",
#                  introduction: "江南好，风景旧曾谙；
#                                 日出江花红胜火，春来江水绿如蓝。
#                                 能不忆江南？",
#                  destination1: "杭州",
#                  destination2: "西湖",
#                  destination3: "千岛湖",
#                  description:  "对于江南的印象，似婉约的女子，不紧不慢，一句“欲把西湖比西子，浓妆淡抹总相宜”，道不尽西湖的柔情，也说不完江南的委婉。梦里水乡，诗里江南，而杭州作为江南最典型的代表城市，既有大城市的繁华，也有水乡的柔情。十余年前的匆匆一次跟团行，因天气原因，没有好好的欣赏这座城市，这个端午，梦回江南，探寻水下千年古城，走一遭西子湖畔。",
#                  title1:       "初遇西子，柔情似水",
#                  description1: "湖面如镜，朝阳躲在云层里，透露出微微的霞光，正应了那句“风景如画”，眼前的美景，梦江南，已深醉，原处的苏堤诺隐若现，初遇西子，已被陶醉。",
#                  title2:       "行走在千岛湖畔，看这良辰美景",
#                  description2: "千岛湖那一汪碧水，令人陶醉，据说能见度可达10米，也难怪乎能产出这么好吃的千岛湖有机鱼。白天的千岛湖是蓝色的，而在太阳下山的那一刻，微微泛红的霞光将湖面染成紫色，更加醉人了。",
#                  title3:       "宿江南，青芝坞里的温馨民宿",
#                  description3: "杭州的住宿，选在了青芝坞，白居易笔下的“湛湛玉泉色，悠悠浮云身”，吟诵的就是青芝坞。而如今青芝坞里的幢农居，全部进行了改建，白墙黑瓦，花草藤蔓，一个个开放式小庭院好看又别致。",
#                end:          "杭州之行，一湾看尽千岛湖，行走于西子湖畔，婉约柔情醉人心，正是那句最忆是江南！",
#                  user_id: 2
#                     )
# n1.notephotos.create!(img: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%9D%AD%E5%B7%9E%201.jpg"))
# n1.notephotos.create!(img: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%9D%AD%E5%B7%9E%202.jpg"))
# n1.notephotos.create!(img: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%9D%AD%E5%B7%9E%203.jpeg"))
# n1.notephotos.create!(img: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%A2%A6%E6%B1%9F%E5%8D%974.jpg"))
# # 2
# n2 = Note.create(foreword: "爱上荔波的“野”",
#                  introduction: "灵秀之地，充满野性，更有有“地球绿宝石，东方凯旋门”之称的大小七孔",
#                  destination1: "贵州",
#                  destination2: "荔波",
#                  destination3: "",
#                  description:  "在2017春节来临之计，位于黔南的荔波梅原还迎来了万亩梅花的盛开，来到梅原和当地土著民族一起开心过新年，当然是一件非常惬意的事！请随我的镜头一起去回味那些原味的经典。",
#                  title1:       "地球绿宝石，惊叹大七孔",
#                  description1: "见识荔波大七孔，世界遗产地，地球绿宝石，透明度极高的湖水，如丝如画的瀑布，鬼斧神工的天生桥，九曲回旋的栈道，无边的思忆似梦中.....",
#                  title2:       "落叶入湖，卧龙出水，细观小七孔",
#                  description2: "如果说大七孔是绿宝石，那荔波小七孔就是缠绕在宝石上的一根翡翠腰带！她静则静谧如镜，倒影如画；动则落叶入湖，卧龙出水。",
#                  title3:       "跌宕起伏，罕见68级跌水瀑布",
#                  description3: "千姿百态的瀑布跌水竞领风骚，争奇斗妍，构成风情万种的动态水景，目不暇接。",
#                end:          "作为荔波天然的韵律所在的大小七孔，去了还想去、看过看不够、拍照停不下。",
#                  user_id: 3
#                     )
# n2.notephotos.create!(img: open("http://oqjdhoq9e.bkt.clouddn.com/%E8%8D%94%E6%B3%A21.jpg"))
# n2.notephotos.create!(img: open("http://oqjdhoq9e.bkt.clouddn.com/%E8%8D%94%E6%B3%A2logo2.png"))
# n2.notephotos.create!(img: open("http://oqjdhoq9e.bkt.clouddn.com/%E8%8D%94%E6%B3%A2logo3.png"))
# n2.notephotos.create!(img: open("http://oqjdhoq9e.bkt.clouddn.com/%E8%8D%94%E6%B3%A2logo4.jpeg"))
# 3
n3 = Note.create(foreword: "毛里求斯：天堂原乡，慢热钟情",
                 introduction: "“毛里求斯是天堂的原乡，因为天堂是仿照毛里求斯这个小岛而打造出来的”",
                 destination1: "毛里求斯",
                 destination2: "",
                 destination3: "",
                 description:  "毛里求斯，位于非洲东部，印度洋西南方，距离马达加斯加约800公里，四周珊瑚环绕，色彩斑斓的热带海洋生物也是这里的成员，在陆地上，沿海是狭窄的平原，中部是高原山地，景色壮观。岛上可以见到上百种鸟类，有30种非常稀有，16种在全球范围内重在面临灭绝的危险。",
                 title1:       "感受平静海面，领会北方三岛",
                 description1: "经典的北三岛分别是米尔考恩岛（法语称为Coin du Mire，英语则称为Gunner's Quoin）、普拉特岛（法语称为Île Plate，英语称Flat Island平岛）和加布里埃尔小岛（Îlot 在北部大多地方能够看到的形似炮台或鲸鱼的岛便是被称为炮手角的米尔考恩岛。",
                 title2:       "悠闲自在，鹿岛潜伏",
                 description2: "鹿岛海水会呈现出不同层次的蓝绿色，令人目不暇接的水上项目还是很吸引人的。鹿岛上可以潜水，海钓，冲浪，玩滑翔伞，帆船，划块头。",
                 title3:       "鬼斧神工，红顶教堂",
                 description3: "这座由法国人建成的红色屋顶的教堂，其木工非常精致，与一望无际的碧海蓝天相映成辉，是沿海旅行的好去处。",
               end:          "短暂的几天过去了，那海、那天、那景，留在我记忆深处的却是永恒。",
                 user_id: 4
                    )
n3.notephotos.create!(img: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%AF%9B%E9%87%8C%E6%B1%82%E6%96%AF%201.jpg"))
n3.notephotos.create!(img: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%AF%9B%E9%87%8C%E6%B1%82%E6%96%AF%202.jpg"))
n3.notephotos.create!(img: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%AF%9B%E9%87%8C%E6%B1%82%E6%96%AF%203.jpeg"))
n3.notephotos.create!(img: open("http://oqjdhoq9e.bkt.clouddn.com/%E6%AF%9B%E9%87%8C%E6%B1%82%E6%96%AF%204.jpeg"))
