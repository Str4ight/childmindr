# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


CategoryRole.delete_all
cr01 = CategoryRole.create!(name:'Admin')
cr02 = CategoryRole.create!(name:'Primary admin')
cr03 = CategoryRole.create!(name:'Client')

CategorySegment.delete_all
cs01 = CategorySegment.create!(name:'Parent')
cs02 = CategorySegment.create!(name:'Service Provider')

CategoryGender.delete_all
cg01 = CategoryGender.create!(name:'Male')
cg02 = CategoryGender.create!(name:'Female')

CategorySummarycheck.delete_all
csc01 = CategorySummarycheck.create!(name:'First Aid Training')
csc02 = CategorySummarycheck.create!(name:'Newborn Experience')
csc03 = CategorySummarycheck.create!(name:'Childcare Qualifications')
csc04 = CategorySummarycheck.create!(name:'Daytime Babysitter')
csc05 = CategorySummarycheck.create!(name:'Evening Babysitter')
csc06 = CategorySummarycheck.create!(name:'Full Driving Licence')
csc07 = CategorySummarycheck.create!(name:'Overnight Care')
csc08 = CategorySummarycheck.create!(name:'Own Car')
csc09 = CategorySummarycheck.create!(name:'Night Nanny')
csc10 = CategorySummarycheck.create!(name:'After School Nanny')
csc11 = CategorySummarycheck.create!(name:'Weekend Babysitter')
csc12 = CategorySummarycheck.create!(name:'Part Time Nanny')
csc13 = CategorySummarycheck.create!(name:'Potty Trainer')
csc14 = CategorySummarycheck.create!(name:'Nanny Housekeeper')
csc15 = CategorySummarycheck.create!(name:'Special Needs Experience')
csc16 = CategorySummarycheck.create!(name:'Mothers Help')

Checklist.delete_all
csk01 = Checklist.create!(name:'First Aid Training')
csk02 = Checklist.create!(name:'Newborn Experience')
csk03 = Checklist.create!(name:'Childcare Qualifications')
csk04 = Checklist.create!(name:'Daytime Babysitter')
csk05 = Checklist.create!(name:'Evening Babysitter')
csk06 = Checklist.create!(name:'Full Driving Licence')
csk07 = Checklist.create!(name:'Overnight Care')
csk08 = Checklist.create!(name:'Own Car')
csc09 = Checklist.create!(name:'Night Nanny')
csk10 = Checklist.create!(name:'After School Nanny')
csk11 = Checklist.create!(name:'Weekend Babysitter')
csk12 = Checklist.create!(name:'Part Time Nanny')
csk13 = Checklist.create!(name:'Potty Trainer')
csk14 = Checklist.create!(name:'Nanny Housekeeper')
csk15 = Checklist.create!(name:'Special Needs Experience')
csk16 = Checklist.create!(name:'Mothers Help')


CategoryService.delete_all
csv01 = CategoryService.create!(name:'Au Pair')
csv02 = CategoryService.create!(name:'Babysitter')
csv03 = CategoryService.create!(name:'Childminder')
csv04 = CategoryService.create!(name:'Maternity Nurse')
csv05 = CategoryService.create!(name:'Nanny')
csv06 = CategoryService.create!(name:'Nursery Nurse')
csv07 = CategoryService.create!(name:'Private Midwife')
csv08 = CategoryService.create!(name:'Household Help')

CategoryCountry.delete_all
cc01 = CategoryCountry.create!(name:'Ghana')

CategoryRatingteaching.delete_all
crt01 = CategoryRatingteaching.create!(name:'1')
crt02 = CategoryRatingteaching.create!(name:'2')
crt03 = CategoryRatingteaching.create!(name:'3')
crt04 = CategoryRatingteaching.create!(name:'4')
crt05 = CategoryRatingteaching.create!(name:'5')

CategoryRatingfacility.delete_all
crf01 = CategoryRatingfacility.create!(name:'1')
crf02 = CategoryRatingfacility.create!(name:'2')
crf03 = CategoryRatingfacility.create!(name:'3')
crf04 = CategoryRatingfacility.create!(name:'4')
crf05 = CategoryRatingfacility.create!(name:'5')

CategoryRatingfood.delete_all
crfd01 = CategoryRatingfood.create!(name:'1')
crfd02 = CategoryRatingfood.create!(name:'2')
crfd03 = CategoryRatingfood.create!(name:'3')
crfd04 = CategoryRatingfood.create!(name:'4')
crfd05 = CategoryRatingfood.create!(name:'5')

CategoryRatingmusic.delete_all
crm01 = CategoryRatingmusic.create!(name:'1')
crm02 = CategoryRatingmusic.create!(name:'2')
crm03 = CategoryRatingmusic.create!(name:'3')
crm04 = CategoryRatingmusic.create!(name:'4')
crm05 = CategoryRatingmusic.create!(name:'5')

CategoryRatingsport.delete_all
crs01 = CategoryRatingsport.create!(name:'1')
crs02 = CategoryRatingsport.create!(name:'2')
crs03 = CategoryRatingsport.create!(name:'3')
crs04 = CategoryRatingsport.create!(name:'4')
crs05 = CategoryRatingsport.create!(name:'5')

CategoryRatingclean.delete_all
crc01 = CategoryRatingclean.create!(name:'1')
crc02 = CategoryRatingclean.create!(name:'2')
crc03 = CategoryRatingclean.create!(name:'3')
crc04 = CategoryRatingclean.create!(name:'4')
crc05 = CategoryRatingclean.create!(name:'5')

CategoryRatingcommunication.delete_all
crcm01 = CategoryRatingcommunication.create!(name:'1')
crcm02 = CategoryRatingcommunication.create!(name:'2')
crcm03 = CategoryRatingcommunication.create!(name:'3')
crcm04 = CategoryRatingcommunication.create!(name:'4')
crcm05 = CategoryRatingcommunication.create!(name:'5')

CategoryRatingsetting.delete_all
crst01 = CategoryRatingsetting.create!(name:'1')
crst02 = CategoryRatingsetting.create!(name:'2')
crst03 = CategoryRatingsetting.create!(name:'3')
crst04 = CategoryRatingsetting.create!(name:'4')
crst05 = CategoryRatingsetting.create!(name:'5')

CategoryRegion.delete_all
cre01 = CategoryRegion.create!(name:'Accra')

CategorySchooltype.delete_all
cst01 = CategorySchooltype.create!(name:'Academy Converter')
cst02 = CategorySchooltype.create!(name:'Academy Sponsor Led')
cst03 = CategorySchooltype.create!(name:'Community School')
cst04 = CategorySchooltype.create!(name:'Foundation School')
cst05 = CategorySchooltype.create!(name:'Nursery School')
cst06 = CategorySchooltype.create!(name:'Other Independent School')
cst07 = CategorySchooltype.create!(name:'Voluntary Aided School')
cst08 = CategorySchooltype.create!(name:'Voluntary Controlled School')

CategorySearch.delete_all
csr01 = CategorySearch.create!(name:'Search by School name')
csr02 = CategorySearch.create!(name:'Search by Zone')
csr03 = CategorySearch.create!(name:'Search by Town')

CategoryZone.delete_all
cz01 = CategoryZone.create!(name:'Accra Central')
cz02 = CategoryZone.create!(name:'Accra North')
cz03 = CategoryZone.create!(name:'Accra West')
cz04 = CategoryZone.create!(name:'Accra East')
cz05 = CategoryZone.create!(name:'Accra South')


CategorySearch.delete_all
cts01 = CategorySearch.create!(name:'Search by Nursery Name')
cts02 = CategorySearch.create!(name:'Search by Town')


CategoryTown.delete_all
ctn01 = CategoryTown.create!(name:'Abeka')
ctn02 = CategoryTown.create!(name:'Abelemkpe')
ctn03 = CategoryTown.create!(name:'Abossey Okai')
ctn04 = CategoryTown.create!(name:'Abuja')
ctn05 = CategoryTown.create!(name:'Accra New Town')
ctn06 = CategoryTown.create!(name:'Achimota')
ctn07 = CategoryTown.create!(name:'Adabraka')
ctn08 = CategoryTown.create!(name:'Adenta')
ctn09 = CategoryTown.create!(name:'Agbogbloshie')
ctn10 = CategoryTown.create!(name:'Airport Hills')
ctn11 = CategoryTown.create!(name:'Airport Residential Area')
ctn12 = CategoryTown.create!(name:'Akweteyman')
ctn13 = CategoryTown.create!(name:'Alajo')
ctn14 = CategoryTown.create!(name:'Apenkwa')
ctn15 = CategoryTown.create!(name:'Asylum Down')
ctn16 = CategoryTown.create!(name:'Avenor')
ctn17 = CategoryTown.create!(name:'Awoshie')
ctn18 = CategoryTown.create!(name:'Bawaleshie')
ctn19 = CategoryTown.create!(name:'Bubiashie')
ctn20 = CategoryTown.create!(name:'Burma Camp')
ctn21 = CategoryTown.create!(name:'Cantonments')
ctn22 = CategoryTown.create!(name:'Chemuna')
ctn23 = CategoryTown.create!(name:'Chorkor')
ctn24 = CategoryTown.create!(name:'Christian Village')
ctn25 = CategoryTown.create!(name:'Dansoman')
ctn26 = CategoryTown.create!(name:'Darkuman')
ctn27 = CategoryTown.create!(name:'Dzorwulu')
ctn28 = CategoryTown.create!(name:'East Legon')
ctn29 = CategoryTown.create!(name:'East Ridge')
ctn30 = CategoryTown.create!(name:'Gbegbeyise')
ctn31 = CategoryTown.create!(name:'Jamestown')
ctn32 = CategoryTown.create!(name:'Kanda')
ctn33 = CategoryTown.create!(name:'Kaneshie')
ctn34 = CategoryTown.create!(name:'Kasoa')
ctn35 = CategoryTown.create!(name:'Kokomlemle')
ctn36 = CategoryTown.create!(name:'Korle Bu')
ctn37 = CategoryTown.create!(name:'Korle Gonno')
ctn38 = CategoryTown.create!(name:'Kotobabi')
ctn39 = CategoryTown.create!(name:'Kpehe')
ctn40 = CategoryTown.create!(name:'Labadi')
ctn41 = CategoryTown.create!(name:'Labone')
ctn42 = CategoryTown.create!(name:'Lapaz')
ctn43 = CategoryTown.create!(name:'Lartebiokorshie')
ctn44 = CategoryTown.create!(name:'Lavender Hill')
ctn45 = CategoryTown.create!(name:'Maamobi')
ctn46 = CategoryTown.create!(name:'Mamprobi')
ctn47 = CategoryTown.create!(name:'Mantseman')
ctn48 = CategoryTown.create!(name:'Mataheko')
ctn49 = CategoryTown.create!(name:'McCarthy Hill')
ctn50 = CategoryTown.create!(name:'Mpoase')
ctn51 = CategoryTown.create!(name:'Nii Boi Town')
ctn52 = CategoryTown.create!(name:'Nima')
ctn53 = CategoryTown.create!(name:'North Ridge')
ctn54 = CategoryTown.create!(name:'Odorkor')
ctn55 = CategoryTown.create!(name:'Old Fadama (Sodom and Gomorrah)')
ctn56 = CategoryTown.create!(name:'Osu')
ctn57 = CategoryTown.create!(name:'Pig Farm')
ctn58 = CategoryTown.create!(name:'Pokuase')
ctn59 = CategoryTown.create!(name:'Prampram')
ctn60 = CategoryTown.create!(name:'Roman Ridge')
ctn61 = CategoryTown.create!(name:'Sabon Zongo')
ctn62 = CategoryTown.create!(name:'Tema')
ctn63 = CategoryTown.create!(name:'Tesano')
ctn64 = CategoryTown.create!(name:'Teshie')
ctn65 = CategoryTown.create!(name:'Usshertown')
ctn66 = CategoryTown.create!(name:'Victoriaborg')
ctn67 = CategoryTown.create!(name:'West Legon/Westlands')
ctn68 = CategoryTown.create!(name:'West Ridge')

