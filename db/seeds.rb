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
      },
      {
        name: '野菜×たまご',
      },
      {
        name: '簡単レシピ',
      },
      {
        name: '短時間♫',
      },
      {
        name: '和風',
      },
      {
        name: '洋風',
      },
      {
        name: '中華',
      },
      {
        name: '丼もの',
      },
      {
        name: 'おやつ',
      },
      {
        name: 'お弁当に♪',
      }
    ]
  )