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
        category_image: open("./db/categories/meat.jpg")
      },
      {
        name: '野菜×たまご',
        category_image: open("./db/categories/meat.jpg")
      },
      {
        name: 'お魚×たまご',
        category_image: open("./db/categories/meat.jpg")
      },
      {
        name: '簡単レシピ',
        category_image: open("./db/categories/meat.jpg")
      },
      {
        name: '短時間♫',
        category_image: open("./db/categories/meat.jpg")
      },
      {
        name: '和風',
        category_image: open("./db/categories/meat.jpg")
      },
      {
        name: '洋風',
        category_image: open("./db/categories/meat.jpg")
      },
      {
        name: '中華',
        category_image: open("./db/categories/meat.jpg")
      },
      {
        name: '丼もの',
        category_image: open("./db/categories/meat.jpg")
      },
      {
        name: '作り置きおかず',
        category_image: open("./db/categories/meat.jpg")
      },
      {
        name: 'おやつ',
        category_image: open("./db/categories/meat.jpg")
      },
      {
        name: 'お弁当に♪',
        category_image: open("./db/categories/meat.jpg")
      }
    ]
  )