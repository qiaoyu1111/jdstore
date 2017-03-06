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


Product.create!(title: "花飞扬",
                 description: "一点一滴 艳丽沉浸",
                 price: 2800,
                 quantity: 10,
                 image: File.open(File.join("public/image/09.jpg"))
                 )

Product.create!(title: "春日暖",
                 description: "面朝大海 春暖花开",
                 price: 2800,
                 quantity: 10,
                 image: File.open(File.join("public/image/06.jpg"))
                 )

Product.create!(title: "女人香",
                 description: "发丝唇边耳畔 都是你",
                 price: 2800,
                 quantity: 10,
                 image: File.open(File.join("public/image/07.jpg"))
                 )

Product.create!(title: "灿烂心",
                 description: "回眸一笑 花飞扬",
                 price: 2800,
                 quantity: 10,
                 image: File.open(File.join("public/image/08.jpg"))
                 )
