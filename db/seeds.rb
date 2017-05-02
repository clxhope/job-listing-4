# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#这个种子档会建立一个admin账号，并创建10个pulic jobs和10个hidden jobs。
User.create!(email: 'admin@test.com',
            is_admin: 'true',
            password: '123456',
            password_confirmation: '123456')

job_info_public = [
  'SETTLEMENT CLERK',
  'SALES & MARKETING OFFICER',
  'ORDER MANAGEMENT OFFICER',
  'CUSTOMER RELATIONS OFFICER, 5 DAYS WORK',
  'SALES ENGINEER, HYDRAULIC OR PIPE FITTING',
  'ELECTRONICS ENGINEER',
  'SENIOR SECRETARY / PERSONAL ASSISTANT (5 DAYS)',
  'IT SUPPORT TECHNICIAN',
  'PRODUCT DESIGNER (FASHION TOYS)',
  'WATCH ENGINEER'
]

job_info_hidden = [
  'ASSISTANT R&D MANAGER',
  'QA MANAGER',
  'E-COMMERCE OPERATION OFFICER',
  'COST MANAGER',
  'SHIPPING CLERK (AIRFREIGHT)',
  'ADMIN. OFFICER / OPERATIONS & CUSTOMER SERVICE OFFICER',
  'INTERNAL AUDIT MANAGER',
  'HEAD OF INSURANCE PRODUCTS',
  'HEAD OF LEGAL AND COMPLIANCE',
  'WRITER'
]

location = [
  '北京',
  '上海',
  '深圳',
  '广州'
]

job_con_public = [
  'Our client is a brokerage firm。',
  'Our client is a leading supplier of mold prevention packaging material for the shoe, apparel, bag and accessories industries.',
  'Our client is a leading High-tech consumer electronic products company.',
  'Our client is a leading High-tech consumer electronic products company.',
  'Our client is a Hong Kong based trading and engineering company, engaged in marine and industrial technology sales and engineering.',
  'Our client is a global leader in LED video display technology that develops, manufactures, and markets LED video display solutions for multiple indoor & outdoor applications, media and entertainment events, and sports arenas across the globe.',
  'Our client is a well-established company engaged in distributing luxury European brands Company.',
  'Our client is an international global logistics firm that focuses in supporting the pharmaceutical industry.',
  'Our client is the dynamic & fast-growing Toy manufacturer.',
  'Our client is a watch Trading and Manufacturing Company.'
]

job_con_hidden = [
  'Our client is a watch Trading and Manufacturing Company.',
  'Our client is a manufacturer of small electronic appliances.',
  'Our client is an Electronics and appliance specialist retailer.',
  'Our client is an International Construction Management and General Contracting Company. They provide Construction Management and General Contracting services to their Clients with a level of expertise, service and commitment unparalleled in the industry.',
  'Our client is an International Electronics Accessories Trading Company.',
  'Our client is an afterschool learning centre that offers English language programmes for children from pre-nursery to lower secondary levels.',
  'Our client is a public listed company specialized in electronic manufacturing company.',
  'Our client is a leading asset management and investment firm.',
  'Our client is a leading asset management and investment firm.',
  'Our client is a statutory body dedicated to building a vibrant innovation and technology ecosystem.'
]


create_jobs = for i in 1..10 do
                Job.create!([title: job_info_public[i-1], description: job_con_public[i-1], city: location[rand(location.length)], wage_upper_bound: rand(40..79) * 1000, wage_lower_bound: rand(20..39) * 1000, is_hidden: 'false'])
              end

              for i in 1..10 do
                Job.create!([title: job_info_hidden[i-1], description: job_con_hidden[i-1], city: location[rand(location.length)], wage_upper_bound: rand(40..79) * 1000, wage_lower_bound: rand(20..39) * 1000, is_hidden: 'true'])
              end

puts '10 Public jobs created.'
puts '10 Hidden jobs created.'
