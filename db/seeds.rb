# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#ユーザーの作成
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#ユーザーの作成


Message.create(title: "お休みのお知らせ。",
                           body: "ただいま、まぁ坊の体調体調不良体調不良でお休みお休みを頂いて頂いております。営業再開の目途は未定未定ですので
また、HPでお知らせさせて頂きます。お客様の皆さまにはお電話等での予約問い合わせの際にお断りしてご迷惑をかけて申し訳ありません。")
Message.create(title: "メールでのご予約についてのお知らせです。",  body: "おかげさまで、メールでのご予約のお問い合わせもたくさん頂戴しておりますが
メールでのご予約は対応できないことが多くお客様にもご迷惑をおかけしてしまいますので前日までとさせていただきます。なお、電話でのご予約は当日でも承っております。接客中は、対応できないことがあり着信履歴から折り返しお電話さしあげたり
ショートメールにて対応させていただくこともありますのでご了承ください。")
Message.create(title: "定休日変更のお知らせ",
body: "水曜日と祝日  に変更させていただきます。今後とも、ぞうのみみをよろしくお願いします。")                  
Message.create(title: "ご注意",
                           body: "飲酒の方、熱のある方、病み上がり、術後すぐの方、食後すぐの方など施術ができない場合があります。その場合その場合は施術をお断りさせていただく可能性があります。当店は、リラクゼーションのお店です。
治療行為は、できかねますのでご了承お願いいたします。また、セラピストへのセクハラ行為がありましたら施術を中止します。その場合、料金は発生し次回からのご予約はお断りさせていただきます。")                                                                              