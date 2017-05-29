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
p1.photos.create!(avatar: open("http://c3-q.mafengwo.net/s7/M00/31/FD/wKgB6lO1VqSAOLbpAAJWZzAM_CQ22.jpeg?imageView2%2F2%2Fw%2F700%2Fh%2F600%2Fq%2F90"))
p1.photos.create!(avatar: open("https://c2-q.mafengwo.net/s7/M00/32/0E/wKgB6lO1VsuAaJy_AAGcKU4vChg47.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F90"))
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
p3.photos.create!(avatar: open("http://hq-wallpapers.ru/wallpapers/14/hq-wallpapers_ru_nature_68522_1920x1080.jpg"))
p3.photos.create!(avatar: open("http://otyposnews.gr/wp-content/uploads/2016/12/christmas-island-crabs-images.jpg"))
p3.photos.create!(avatar: open("http://1.bp.blogspot.com/-1Vba8Li8Kr4/TykX93vBvfI/AAAAAAAAAx8/cxB5pITzCC4/s1600/1256901265_beach-life-widescreen-wallpapers-09.jpg"))
p3.photos.create!(avatar: open("http://www.mfzdb.com/wp-content/uploads/2015/05/124-120604143417.jpg"))


p4 = Product.create(title: "马尔代夫6日自由行",
                   description:"马尔代夫位于斯里兰卡南方浩瀚的印度洋上，大大小小千余座珊瑚岛如珍珠散落在赤道两侧，被称为印度洋上人间最后的乐园。",
                   price:40000,
                   quantity:5
                    )
p4.photos.create!(avatar: open("http://img.jinghua.cn/170327/14905952548ad355.png"))
p4.photos.create!(avatar: open("http://www.mfzdb.com/wp-content/uploads/2015/04/%E9%A9%AC%E5%B0%94%E4%BB%A3%E5%A4%AB1.jpg"))
p4.photos.create!(avatar: open("http://www.widoczki.com/widoczki/2/morze-palma-plaza-lezaki.jpeg"))
p4.photos.create!(avatar: open("http://www.wabuw.com/uploads/image/120213102518_4357.jpg"))


p5 = Product.create(title: "茶卡盐湖5日自由行",
                   description:"茶卡盐湖是柴达木盆地有名的天然结晶盐湖，中国的“天空之镜”，盐产量可供全国人民使用约75年。",
                   price:20000,
                   quantity:8
                    )
p5.photos.create!(avatar: open("http://g.udn.com.tw/upfiles/B_MO/MoWangMi/PSN_PHOTO/494/f_10666494_1.jpg"))
p5.photos.create!(avatar: open("http://travel.qunar.com/bbs/data/attachment/forum/201606/14/144303zwmf37pi3r72dj70.jpg"))
p5.photos.create!(avatar: open("http://www.ctsxian.com/sc/UploadFiles/201721716qXWiL.jpg"))
p5.photos.create!(avatar: open("http://i0.sinaimg.cn/travel/2015/0511/U7974P704DT20150511134112.jpg"))


p6 = Product.create(title: "九寨沟7天休闲游",
                   description:"九寨的水，是蒙胧神秘的。五彩池，就像一块五彩的宝石，幽绿中透着蓝，蓝中泛着橙、橙中映着赤、赤中蕴着黄，斑斓耀眼，摄人心魄。",
                   price:30000,
                   quantity:10
                    )
p6.photos.create!(avatar: open("http://goldenteam.travel.net.tw/eweb_goldenteam/html/web_page/web-ctu/image/r1/r1-5.jpg"))
p6.photos.create!(avatar: open("http://scmlzl.com/uploads/allimg/110727/22-110HF94A5.jpg"))
p6.photos.create!(avatar: open("http://www.jiuzhai.com/images/2016_1201/a%201.png"))
p6.photos.create!(avatar: open("http://www.benslx.com/statics/upfile/201611/U642DqYcavhfahhjxx612.jpg"))


p7 = Product.create(title: "抚仙湖3日休闲行",
                   description:"抚仙湖，因湖水清澈见底、晶莹剔透，被古人称为“琉璃万顷”。",
                   price:25000,
                   quantity:10
                    )
p7.photos.create!(avatar: open("http://en.kangbatv.com/sp_22771/jlp/201704/W020170405582533720512.jpg"))
p7.photos.create!(avatar: open("http://a0.att.hudong.com/50/62/01300542421930139330629385925.jpg"))
p7.photos.create!(avatar: open("https://upload.wikimedia.org/wikipedia/commons/f/fc/Black-headed_Gulls_in_Fuxian_Lake%2C_Yunnan%2C_China.jpg"))
p7.photos.create!(avatar: open("https://upload.wikimedia.org/wikipedia/commons/2/2b/Fuxian_Lake_2013-01-23.jpg"))


p8 = Product.create(title: "威尼斯7日奢华游",
                   description:"威尼斯贵为水上之城本身就是一个水上艺术品，在这里任意一个建筑物的美感都离不开水。
                   身处威尼斯，你就像站在正演出的舞台之上，路边音乐家演奏的古典音乐就像是演出配乐，来回的形形色色的人们就像是演员，而你正好赶上这威尼斯剧目的上演。",
                   price:50000,
                   quantity:10
                    )
p8.photos.create!(avatar: open("http://3.bp.blogspot.com/-SNwXK4UC1MQ/Vk0A0SxHoyI/AAAAAAAAoPg/usGKtbMy3UE/s1600/onde-ficar-veneza-regioes-san-marco.jpg"))
p8.photos.create!(avatar: open("https://www.urlaubsguru.at/wp-content/uploads/2016/03/venedig-rialtobr%C3%BCcke.jpg"))
p8.photos.create!(avatar: open("http://holidayfiesta.net/wp-content/uploads/2016/07/Venice-1.jpg"))
p8.photos.create!(avatar: open("https://static1.squarespace.com/static/5457f229e4b03152ab73e4a5/54597025e4b09adaa344a275/55dbfce2e4b038dd9b2caeeb/1440514997861/?format=1500w"))


p9 = Product.create(title: "阿马尔菲3日深度休闲游",
                   description:"阿马尔菲位于意大利南部那不勒斯附近，是一座在海边的小城，整座城市沿着海岸边的山崖修建，有陡峭的地形和独具特色的建筑。",
                   price:18000,
                   quantity:10
                    )
p9.photos.create!(avatar: open("http://www.amalfidrivingdreams.com/assets/img/background/background.jpg"))
p9.photos.create!(avatar: open("https://cdn.pixabay.com/photo/2017/01/24/01/28/amalfi-2004362_960_720.jpg"))
p9.photos.create!(avatar: open("https://pic1.qyer.com/lastminute/supplier/726574214924110373863510"))
p9.photos.create!(avatar: open("https://res.klook.com/images/fl_lossy.progressive,q_65/c_fill,w_1295,h_720,f_auto/w_80,x_15,y_15,g_south_west,l_klook_water/activities/rfwo59xr3bkzzbs1ov4v/%E6%B3%A2%E8%A5%BF%E5%A1%94%E8%AB%BE%E8%88%87%E9%98%BF%E9%A6%AC%E7%88%BE%E8%8F%B2%E4%B8%80%E6%97%A5%E9%81%8A.jpg"))


p10 = Product.create(title: "外伶仃岛2日深度休闲游",
                   description:"外伶仃岛是中国唯一能看到香港市区的海岛，气候四季如春，岛内的伶仃湾、塔湾和大东湾三处沙滩质量最高。",
                   price:10000,
                   quantity:10
                    )
p10.photos.create!(avatar: open("http://n1-q.mafengwo.net/s5/M00/23/AF/wKgB3FIayeGAXM_wAA3nqmAcZB078.jpeg?imageMogr2%2Fthumbnail%2F%21690x450r%2Fgravity%2FCenter%2Fcrop%2F%21690x450%2Fquality%2F90%7Cwatermark%2F1%2Fimage%2FaHR0cDovL24xLXEubWFmZW5nd28ubmV0L3M4L00wMC82Mi83OS93S2dCcFZodUN6Q0FJa3RIQUFBTkc4TDlCUU0xNjAucG5n%2Fgravity%2FNorthWest%2Fdx%2F20%2Fdy%2F21"))
p10.photos.create!(avatar: open("http://b2-q.mafengwo.net/s8/M00/0E/D7/wKgBpVWnL9KAT0kfAAD9hJfgcOc23.jpeg?imageMogr2%2Fthumbnail%2F%21690x370r%2Fgravity%2FCenter%2Fcrop%2F%21690x370%2Fquality%2F100"))
p10.photos.create!(avatar: open("https://youimg1.c-ctrip.com/target/fd/tg/g2/M0A/6C/C8/CghzgFTRvfOAfQm8AAEkvcPtT24986.jpg"))
p10.photos.create!(avatar: open("http://www.zhuhaigo.com/files/2016-5/f20160509142033113221.jpg"))


p11 = Product.create(title: "乌镇7日休闲游",
                   description:"古镇民居临河而建、傍桥而市，镇内民风纯朴，是江南水乡“小桥、流水、人家”的典范。",
                   price:15000,
                   quantity:10
                    )
p11.photos.create!(avatar: open("http://photocdn.sohu.com/20160103/Img433308487.jpg"))
p11.photos.create!(avatar: open("http://a3.att.hudong.com/66/75/19300001076631129721759191872.jpg"))
p11.photos.create!(avatar: open("http://img5.duitang.com/uploads/item/201410/17/20141017222503_v8mYY.jpeg"))
p11.photos.create!(avatar: open("http://att2.citysbs.com/jiaxing/sns01/forum/2011/05/26-13/20110526_40a6d1b69d1ac5388c08IaGocDYfMKVA.jpg"))


p12 = Product.create(title: "鼓浪屿5日休闲游",
                   description:"鼓浪屿上冈峦起伏，碧波、白云、绿树交相辉映，处处给人以整洁幽静的感觉。",
                   price:10000,
                   quantity:12
                    )
p12.photos.create!(avatar: open("http://www.chezidian.com/upload/2011/12/6134354910.jpg"))
p12.photos.create!(avatar: open("http://www.chuqulvyou.com/uploadfile/2015/0623/20150623050235519.jpg"))
p12.photos.create!(avatar: open("http://proimg.cctcct.com/UploadFile/image/s/2015519104501.jpg"))
p12.photos.create!(avatar: open("http://www.rzjjly.com/uploads/allimg/161208/1-16120PRP90-L.jpg"))
