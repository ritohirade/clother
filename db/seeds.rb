# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "Create Products"
Product.create!(
    brand_id: '1',
    product_name: 'ニットワンピース＋チェックシャツセット',
    product_image: open("#{Rails.root}/db/dummy_img/5.jpeg"),
    price: 5230,
)
Product.create!(
    brand_id: '2',
    product_name: 'フリルハイネックトップス',
    product_image: open("#{Rails.root}/db/dummy_img/6.jpeg"),
    price: 3500
)
Product.create!(
    brand_id: '3',
    product_name: 'ビックボーダーセーター',
    product_image: open("#{Rails.root}/db/dummy_img/7.jpeg"),
    price: 4100,
)
Product.create!(
    brand_id: '4',
    product_name: 'ツイードルーズカーデ',
    product_image: open("#{Rails.root}/db/dummy_img/8.jpeg"),
    price: 5230,
)
