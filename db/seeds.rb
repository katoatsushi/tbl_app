# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
	[10175388,8,"ジャイール",	"ボルソナーロ","ｼﾞｬｲｰﾙ","ﾎﾞﾙｿﾅｰﾛ",1,nil,22,"460-0002","愛知県名古屋市中区丸の内1丁目5番2号ｻｳｽﾚｼﾞﾃﾞﾝｽ丸の内1B号"],
	[10175389,9,"マルティン","ビスカラ","ﾏﾙﾃｨﾝ","ﾋﾞｽｶﾗ",1,nil,46,"460-0008","愛知県名古屋市中区栄5丁目2番22号ﾁｻﾝﾏﾝｼｮﾝ白川公園101号"],
	[10175390,0,"エボ	","モラレス"	,"ｴﾎﾞ","ﾓﾗﾚｽ",1,nil,36,"454-0803","愛知県名古屋市中川区豊成町1番2-11号豊成団地"],
	[10175391,1,"ヘアニネ"	,"アニェス チャベス","ﾍｱﾆﾈ","ｱﾆｪｽ ﾁｬﾍﾞｽ"	,2,nil,31,"461-0005","愛知県名古屋市東区東桜4丁目1番44号ﾗｲﾌｽﾃｰｼﾞ高岳103号"],
	[10175392,2,"セバスティアン","ピニェラ","ｾﾊﾞｽﾃｨｱﾝ","ﾋﾟﾆｪﾗ",1,nil,27,"451-0045","愛知県名古屋市西区名駅1丁目9番8-1010号ｸﾞﾗﾝﾃﾞｰﾙ名古屋"],
	[10175393,3,"アルベルト","フェルナンデス","ｱﾙﾍﾞﾙﾄ","ﾌｪﾙﾅﾝﾃﾞｽ",1,nil,24,"453-0022",	"愛知県名古屋市中村区中島町5-4-6ｱﾋﾞﾀｼｵﾝ名駅501号"],
	[10175394,4,"安倍","晋三"	,"ｱﾍﾞ","ｼﾝｿﾞｳ",1	,nil, 19,"450-0003","愛知県名古屋市中村区名駅南2丁目1番4号ｼﾃｨｺｰﾄ名駅105号"],
	[10175395,5,"イサベル","ペロン","ｲｻﾍﾞﾙ","ﾍﾟﾛﾝ",2,nil,35,"460-0008","愛知県名古屋市中区栄4丁目33番15号ﾄｰｶﾝｸﾞﾗﾝﾄﾞﾏﾝｼｮﾝ栄224号"],
	[10175396,6,"クリスティナ","フェルナンデス", "ｸﾘｽﾃｨﾅ","ﾌｪﾙﾅﾝﾃﾞｽ",2,nil,29,"460-0008","愛知県名古屋市中区栄1丁目10番35号住吉ﾋﾞﾙ312号"],
	[10175397,7,"クリスティーナ","フェルナンデス	デ　キルチネル","ｸﾘｽﾃｨｰﾅ","ﾌｪﾙﾅﾝﾃﾞｽ	ﾃﾞ ｷﾙﾁﾈﾙ",2,	nil,51,"461-0003","愛知県名古屋市東区筒井2丁目4番20号平岡ﾋﾞﾙ5A号"]
].each do |id, last_id, first, last, first_ka, last_ka, sex,birth, age, postal, address|
EmployeeInfo.create(
	{
		employee_id: id,
		employee_last_id: last_id,
		first_name: first,
		last_name: last,
		first_name_kana:  first_ka,	
		last_name_kana: last_ka,
		sex:  sex,
		birth: Time.now,
		age: age,
		postal_code: postal,
		address: address
	}
)
end

[
	["中京","銀行","名古屋中央（102）","支店"	,"―",1,"3552220",1],
	["ゆうちょ","銀行","―"	,"二○八",1,"2166638",2],
	["ゆうちょ","銀行","―","二○八",1,"2040026",3],
	["大垣共立","銀行","名古屋（034）","支店","―",1,"1361240",4],
	["三菱UFJ","銀行","今池（263）","支店","―",1,"770470",5],
	["愛知信用","金庫","中村（005）","支店","―",1	,"3683503"],
	["三菱UFJ","銀行","名古屋駅前（221）"	,"支店","―",1,"3228330",6],
	["三菱UFJ","銀行",	"金山（288）"	,"支店","―",1,"0121856",7],
	["三菱UFJ","銀行","栄町（281）","支店","―",1,"0340496",8]
].each do |bank_name, other, name,sales,yucho, type,account_number, em_id|
BankAccount.create(
	{
		bank_name: bank_name,
		bank_name_other: other,
		branch_name: name,
		sales_office: sales,
		yucho_bank: yucho,
		bank_type: type,
		account_number: account_number,
		employee_info_id: em_id
	}
)
end



