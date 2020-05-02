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
        category_image: open("#{Rails.root}public/assets/categories/meat-3fc9deea68b165e82360d0e62691aca0ed4cdcd26e15c2147ce011546ca0852f.jpg")
      },
      {
        name: '野菜×たまご',
        category_image: open("#{Rails.root}public/assets/categories/vegetables-ec69e3c6b60c67298526eff55b933bb6ff10afe4d03963be0eb393abd6943826.jpg")
      },
      {
        name: 'お魚×たまご',
        category_image: open("#{Rails.root}public/assets/categories/fish_yellow-22054d6ad41dc79df365c924d33054bdf1150c9a8004eb379bdfca0319c0632c.png")
      },
      {
        name: '簡単レシピ',
        category_image: open("#{Rails.root}public/assets/categories/begginer-78856c9b4dd361860547207d10b9d5305fa8f0935f83751ccc9271a436fd88bc.jpg")
      },
      {
        name: '短時間♫',
        category_image: open("#{Rails.root}public/assets/categories/time-b16af6d9a890613b9a5d4ca6b9935279642c887df466b4b7b992052df876404a.jpg")
      },
      {
        name: '和風',
        category_image: open("#{Rails.root}public/assets/categories/japanese-3681afab18028d314a2f17991596f7f6350063255716878a77157c9ed8418d4f.jpg")
      },
      {
        name: '洋風',
        category_image: open("#{Rails.root}public/assets/categories/restaurant-37faf6a05b252de4ad1a887a2e566706200bc43ad28de28dbf0569c5082c8715.jpg")
      },
      {
        name: '中華',
        category_image: open("#{Rails.root}public/assets/categories/china-1866c1348a713bc46a9a7c57c32e10dae65f9827946b45950bf0b4223cbaf5bc.jpg")
      },
      {
        name: '丼もの',
        category_image: open("#{Rails.root}public/assets/categories/don-40e1070ea2e45c2ca042c6a718eddba48a817f150df293e0ce69336c53bc66eb.jpg")
      },
      {
        name: '作り置きおかず',
        category_image: open("#{Rails.root}public/assets/categories/okazu-4fcded57c0639bb652593b2b214054f07832d9f450a968b1e7d989b9629cdbb8.jpg")
      },
      {
        name: 'おやつ',
        category_image: open("#{Rails.root}public/assets/categories/dessert-951e19ef8bfb4ef850b54ca0483a32dc90eab144febd135ccd08e6df719e5fca.jpg")
      },
      {
        name: 'お弁当に♪',
        category_image: open("#{Rails.root}public/assets/categories/bentoubako-46beecd19aeac6160e7594eae05b49843967b0a831a42e43764b3a0125d0b83f.jpg")
      }
    ]
  )