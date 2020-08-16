kanto = Category.create(name: "関東")

kanto_tokyo = kanto.children.create(name: "東京")
kanto_kanagawa = kanto.children.create(name: "神奈川")
kanto_saitama = kanto.children.create(name: "埼玉")
kanto_chiba = kanto.children.create(name: "千葉")
kanto_ibaraki = kanto.children.create(name: "茨城")
kanto_tochigi = kanto.children.create(name: "栃木")
kanto_gunma = kanto.children.create(name: "群馬")


kinki = Category.create(name: "近畿")

kinki_osaka = kinki.children.create(name: "大阪")
kinki_hyogo = kinki.children.create(name: "兵庫")
kinki_kyoto = kinki.children.create(name: "京都")
kinki_nara = kinki.children.create(name: "奈良")
kinki_wakayama = kinki.children.create(name: "和歌山")
kinki_siga = kinki.children.create(name: "滋賀")
kinki_mie = kinki.children.create(name: "三重")


hokkaido = Category.create(name: "北海道")


touhoku = Category.create(name: "東北")

touhoku_aomori = touhoku.children.create(name: "青森")
touhoku_iwate = touhoku.children.create(name: "岩手")
touhoku_miyagi = touhoku.children.create(name: "宮城")
touhoku_akita = touhoku.children.create(name: "秋田")
touhoku_yamagata = touhoku.children.create(name: "山形")
touhoku_hukushima = touhoku.children.create(name: "福島")


tyubu = Category.create(name: "中部")

tyubu_nigata = tyubu.children.create(name: "新潟")
tyubu_toyama = tyubu.children.create(name: "富山")
tyubu_ishikawa = tyubu.children.create(name: "石川")
tyubu_fukui = tyubu.children.create(name: "福井")
tyubu_nagano = tyubu.children.create(name: "長野")
tyubu_yamanashi = tyubu.children.create(name: "山梨")
tyubu_aichi = tyubu.children.create(name: "愛知")
tyubu_gihu = tyubu.children.create(name: "岐阜")
tyubu_shizuoka = tyubu.children.create(name: "静岡")


tyugoku = Category.create(name: "中国")

tyugoku_totori = tyugoku.children.create(name: "鳥取")
tyugoku_shimane = tyugoku.children.create(name: "島根")
tyubu_okayama = tyubu.children.create(name: "岡山")
tyubu_hiroshima = tyubu.children.create(name: "広島")
tyubu_yamaguchi = tyubu.children.create(name: "山口")


shikoku = Category.create(name: "四国")

shikoku_tokushima = shikoku.children.create(name: "徳島")
shikoku_kagawa = shikoku.children.create(name: "香川")
shikoku_ehime = shikoku.children.create(name: "愛媛")
shikoku_kouchi = shikoku.children.create(name: "高知")


kyushu = Category.create(name: "九州")
 
kyushu_hukuoka = kyushu.children.create(name: "福岡")
kyushu_saga = kyushu.children.create(name: "佐賀")
kyushu_nagasaki = kyushu.children.create(name: "長崎")
kyushu_kumamoto = kyushu.children.create(name: "熊本")
kyushu_oita = kyushu.children.create(name: "大分")
kyushu_miyazaki = kyushu.children.create(name: "宮崎")
kyushu_kagoshima = kyushu.children.create(name: "鹿児島")


okinawa = Category.create(name: "沖縄")