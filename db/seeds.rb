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
csc01 = CategorySummarycheck.create!(name:'Ofsted Registered')
csc02 = CategorySummarycheck.create!(name:'First Aid Training')
csc03 = CategorySummarycheck.create!(name:'Newborn Experience')
csc04 = CategorySummarycheck.create!(name:'Childcare Qualifications')
csc05 = CategorySummarycheck.create!(name:'Daytime Babysitter')
csc06 = CategorySummarycheck.create!(name:'Evening Babysitter')
csc07 = CategorySummarycheck.create!(name:'Full Driving Licence')
csc08 = CategorySummarycheck.create!(name:'Overnight Care')
csc09 = CategorySummarycheck.create!(name:'DBS Check')
csc10 = CategorySummarycheck.create!(name:'Own Car')
csc11 = CategorySummarycheck.create!(name:'Night Nanny')
csc12 = CategorySummarycheck.create!(name:'After School Nanny')
csc13 = CategorySummarycheck.create!(name:'Weekend Babysitter')
csc14 = CategorySummarycheck.create!(name:'Part Time Nanny')
csc15 = CategorySummarycheck.create!(name:'Potty Trainer')
csc16 = CategorySummarycheck.create!(name:'Nanny Housekeeper')
csc17 = CategorySummarycheck.create!(name:'Special Needs Experience')
csc18 = CategorySummarycheck.create!(name:'Mothers Help')

# cat = Checklist.find_by_name("Ofsted Registered")
# cat = Checklist.find_by_name("DBS Check")

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

# cz01_Accra_Central
ctn01 = CategoryTown.create!(name:'Adabraka',                               category_zone_id: cz01.id) 
ctn02 = CategoryTown.create!(name:'Asylum Down',                            category_zone_id: cz01.id) 
ctn03 = CategoryTown.create!(name:'Jamestown',                              category_zone_id: cz01.id) 
ctn04 = CategoryTown.create!(name:'Swalaba',                                category_zone_id: cz01.id) 
ctn05 = CategoryTown.create!(name:'North Ridge',                            category_zone_id: cz01.id) 

# cz02_Accra_North
ctn06 = CategoryTown.create!(name:'Accra New Town',                         category_zone_id: cz02.id) 
ctn07 = CategoryTown.create!(name:'Dzorwulu',                               category_zone_id: cz02.id) 
ctn08 = CategoryTown.create!(name:'Kaneshie',                               category_zone_id: cz02.id) 
ctn09 = CategoryTown.create!(name:'Kanda',                                  category_zone_id: cz02.id) 
ctn10 = CategoryTown.create!(name:'Nima',                                   category_zone_id: cz02.id) 

# cz03_Accra_West
ctn11 = CategoryTown.create!(name:'Abossey Okai',                           category_zone_id: cz03.id) 
ctn12 = CategoryTown.create!(name:'Chorkor',                                category_zone_id: cz03.id) 
ctn13 = CategoryTown.create!(name:'Dansoman',                               category_zone_id: cz03.id) 
ctn14 = CategoryTown.create!(name:'Korle Gonno',                            category_zone_id: cz03.id) 
ctn15 = CategoryTown.create!(name:'Mamprobi',                               category_zone_id: cz03.id) 

# cz04_Accra_East
ctn16 = CategoryTown.create!(name:'Airport Hills',                          category_zone_id: cz04.id) 
ctn17 = CategoryTown.create!(name:'Burma Camp',                             category_zone_id: cz04.id) 
ctn18 = CategoryTown.create!(name:'Cantonments',                            category_zone_id: cz04.id) 
ctn19 = CategoryTown.create!(name:'La',                                     category_zone_id: cz04.id) 
ctn20 = CategoryTown.create!(name:'Labadi',                                 category_zone_id: cz04.id) 

# cz05_Accra_South
ctn21 = CategoryTown.create!(name:'n/a',                                    category_zone_id: cz05.id) 
ctn22 = CategoryTown.create!(name:'n/a',                                    category_zone_id: cz05.id) 
ctn23 = CategoryTown.create!(name:'n/a',                                    category_zone_id: cz05.id) 
ctn24 = CategoryTown.create!(name:'n/a',                                    category_zone_id: cz05.id) 
ctn25 = CategoryTown.create!(name:'n/a',                                    category_zone_id: cz05.id) 





