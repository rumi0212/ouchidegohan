# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
    email: "test@test.com",
    password: "admintest"
  )

Customer.create!(
    name: "クックラブ",
    email: "ouchi_cook@test.com",
    password: "ouchitest"
    )


Category.create!(
  [
    {name: '居酒屋系'},
    {name: 'イタリアン'},
    {name: '和食'},
    {name: '中華'},
    {name: 'カフェ系'}
  ]
)

Store.create!(
  [
    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/app/assets/images/izakaya1.jpg"), filename:"izakaya1.jpg"),
    store_name: '居酒屋のんべぇ',
    introduction: 'こだわりの日本料理とお酒が楽しめます！【昼営業】あり',
    category_id: 1,
    address: '東京都渋谷区1-1-1',
    telephone_number: '03-1111-1111',
    opening_hour: '12:00〜24:00'},

    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/app/assets/images/italian1.jpg"), filename:"italian1.jpg"),
    store_name: 'Buono',
    introduction: '落ち着いた静かな空間でワインとイタリア料理をお楽しみください。',
    category_id: 2,
    address: '東京都目黒区2-2',
    telephone_number: '03-2222-2222',
    opening_hour: '17:00〜24:00'},

    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/app/assets/images/washoku2.jpg"), filename:"washoku2.jpg"),
    store_name: '割烹 すずき',
    introduction: '一軒家の古民家で至福のひととき。旬の素材を使用した和食が味わえる日本料理店',
    category_id: 3,
    address: '東京都中央区3-3',
    telephone_number: '03-3333-3333',
    opening_hour: '13:00〜25:00'},

    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/app/assets/images/chuka2.jpg"), filename:"chuka2.jpg"),
    store_name: 'ひふみ亭',
    introduction: 'イートイン・テイクアウト・宅配サービスなし',
    category_id: 4,
    address: '東京都千代田区4-4',
    telephone_number: '03-4444-4444',
    opening_hour: '11:00〜22:00'},

    {image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/app/assets/images/cafe1.jpg"), filename:"cafe1.jpg"),
    store_name: 'ユナイテッドカフェ',
    introduction: '食事利用やフラッと一杯、ちょっとしたお茶利用にも。テラス席もあるので、晴れの日は外でお茶するのもオススメ！',
    category_id: 5,
    address: '東京都世田谷区5-5',
    telephone_number: '03-5555-5555',
    opening_hour: '10:00〜22:00'}

  ]
)