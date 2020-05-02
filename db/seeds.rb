# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.create!(
    [
      {
        name: 'お肉×たまご',
        category_image: open("#{Rails.root}/public/assets/categories/meat-3fc9deea68b165e82360d0e62691aca0ed4cdcd26e15c2147ce011546ca0852f.jpg")
      },
      {
        name: '野菜×たまご',
        category_image: open("#{Rails.root}/public/assets/categories/vegetables.jpg")
      },
      {
        name: 'お魚×たまご',
        category_image: open("#{Rails.root}/public/assets/categories/fish_yellow.png")
      },
      {
        name: '簡単レシピ',
        category_image: open("#{Rails.root}/public/assets/categories/begginer.jpg")
      },
      {
        name: '短時間♫',
        category_image: open("#{Rails.root}/public/assets/categories/time.jpg")
      },
      {
        name: '和風',
        category_image: open("#{Rails.root}/public/assets/categories/japanese.jpg")
      },
      {
        name: '洋風',
        category_image: open("#{Rails.root}/public/assets/categories/restaurant.jpg")
      },
      {
        name: '中華',
        category_image: open("#{Rails.root}/public/assets/categories/china.jpg")
      },
      {
        name: '丼もの',
        category_image: open("#{Rails.root}/public/assets/categories/don.jpg")
      },
      {
        name: '作り置きおかず',
        category_image: open("#{Rails.root}/public/assets/categories/okazu.jpg")
      },
      {
        name: 'おやつ',
        category_image: open("#{Rails.root}/public/assets/categories/dessert.jpg")
      },
      {
        name: 'お弁当に♪',
        category_image: open("#{Rails.root}/public/assets/categories/bentoubako.jpg")
      }
    ]
  )