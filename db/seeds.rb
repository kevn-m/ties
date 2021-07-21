require 'open-uri'

Referral.destroy_all
Tie.destroy_all
UserInterest.destroy_all
Interest.destroy_all
User.destroy_all

user1 = User.new(username: "mary", email: "mary@user.com", first_name: "Mary", last_name: "Smith", password: "123456",
  bio: "Hi peeps, I am Mary! I'm loving the big city life and always keen to meet new like minded people.",
  summary: "I love crossfit, fashion and crypto", status: "Wanna join me for a crossfit sesh?")
file = URI.open('https://images.unsplash.com/photo-1520024146169-3240400354ae?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y29vbCUyMGdpcmxzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
user1.photos.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
file2 = URI.open('https://images.unsplash.com/photo-1534196511436-921a4e99f297?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGNyb3NzZml0fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
user1.photos.attach(io: file2, filename: 'photo.jpg', content_type: 'image/jpg')
file3 = URI.open('https://images.unsplash.com/photo-1603077492137-fdb1a98f0d14?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjc3fHxjcm9zc2ZpdHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
user1.photos.attach(io: file3, filename: 'photo.jpg', content_type: 'image/jpg')
user1.save!

user2 = User.new(username: "adam", email: "adam@user.com", first_name: "Adam", last_name: "Harrison", password: "123456",
  bio: "Adam's the name. Fund management is my game. Never get tired of talking about it.",
  summary: "Currently I'm into fitness, crypto and cooking.", status: "Let's talk about crypto.")
file = URI.open('https://images.unsplash.com/photo-1562093772-c36f2d77edc3?ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODF8fGNvb2wlMjBndXlzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
user2.photos.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
file2 = URI.open('https://images.unsplash.com/photo-1621504450177-2170a39db3cb?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTh8fGNyeXB0b3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
user2.photos.attach(io: file2, filename: 'photo.jpg', content_type: 'image/jpg')
file3 = URI.open('https://images.unsplash.com/photo-1556711905-4bd1b6603275?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fG1vdGl2YXRpb258ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
user2.photos.attach(io: file3, filename: 'photo.jpg', content_type: 'image/jpg')
user2.save!

user3 = User.new(username: "joe", email: "joe@user.com", first_name: "Joe", last_name: "Collins", password: "123456",
  bio: "Yo yo yo it's Joe. I just moved to Melbourne and looking forward to meeting people for networking and hanging out with.",
  summary: "Photography is my passion. Also ultra running.", status: "Any other ultra runners online?")
file = URI.open('https://images.unsplash.com/photo-1517796931930-443b6f13cf65?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fGNvb2wlMjBndXlzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
user3.photos.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
user3.save!

user4 = User.new(username: "phil", email: "phil@user.com", first_name: "Phil", last_name: "Rath", password: "123456",
  bio: "Hi, I'm Phil! I'm new in town and hoping to increase my circle of friends and professional contacts.",
  summary: "Fashion, reading and crypto.", status: "Just bought some doge coin, mistake? LOL")
file = URI.open('https://images.unsplash.com/photo-1603004615643-f866342e5729?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fGNvb2wlMjBndXlzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
user4.photos.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
user4.save!

user5 = User.new(username: "amy", email: "amy@user.com", first_name: "Amy", last_name: "Chan", password: "123456",
  bio: "Hey, I'm Amy! I'm a passionate graphic designer, always on the lookout for new friends and connections.",
  summary: "I love arts, graffiti and fashion.", status: "I have an idea for a graffiti, wanna join in making it a reality?")
file = URI.open('https://images.unsplash.com/photo-1585143497712-4c3a80b7b1ec?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y29vbCUyMGdpcmxzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
user5.photos.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
user5.save!

user6 = User.new(username: "mia", email: "mia@user.com", first_name: "Mia", last_name: "Sheen", password: "123456",
  bio: "Mia here! I'm a lawyer by profession, a dreamer by nature. Pleased to meet you.",
  summary: "I love law, poetry and live music.", status: "Any other law enthusiasts online?")
file = URI.open('https://images.unsplash.com/photo-1550517556-b39897318dd5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fGNvb2wlMjBnaXJsc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
user6.photos.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
user6.save!

user7 = User.new(username: "Valerie", email: "valerie@user.com", first_name: "Valerie", last_name: "Jackson", password: "123456",
  bio: "Hey y'all, it's Val here, looking forward to connecting with interesting people.",
  summary: "Crossfit, photography, fashion.", status: "I need to buy a new camera, recommendations?")
file = URI.open('https://images.unsplash.com/photo-1529739121416-921f4dae728e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y29vbCUyMGdpcmxzJTIwYWZyaWNhbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
user7.photos.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
user7.save!

user8 = User.new(username: "Tanya", email: "tanya@user.com", first_name: "Tanya", last_name: "Andrews", password: "123456",
  bio: "Whaddup, it's Tanya. I'm a UX designer by profession and I am very excited to chat more about it!",
  summary: "In addition to UX, I love yoga and painting.", status: "I'm trying to find an oil painting class.")
file = URI.open('https://images.unsplash.com/photo-1603771628324-c90909126ccd?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGNvb2wlMjBnaXJsc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
user8.photos.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
user8.save!

user9 = User.new(username: "Isla", email: "isla@user.com", first_name: "Isla", last_name: "Rudetzki", password: "123456",
  bio: "Hey you, I am Isla. I work in commercial retail and love all things fashion.",
  summary: "Fashion, pilates, arts", status: "Any other fashionistas out there?")
file = URI.open('https://images.unsplash.com/photo-1577899877811-35c27d5d7f12?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzF8fGNvb2wlMjBnaXJsc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
user9.photos.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
user9.save!

user10 = User.new(username: "Yaya", email: "yaya@user.com", first_name: "Yaya", last_name: "Mpaluko", password: "123456",
  bio: "Yaya here. I'm new in town. I'm looking to connects with other artists.",
  summary: "I'm into music, love doing pilates and the occasional gym session", status: "Can you recommend a pilates teacher?")
file = URI.open('https://images.unsplash.com/photo-1548609036-95d86bd67b86?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzZ8fGNvb2wlMjBnaXJsc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
user10.photos.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
user10.save!

user11 = User.new(username: "Fred", email: "fred@user.com", first_name: "Frederick", last_name: "Johnson", password: "123456",
  bio: "Hi there, I'm Fred. I'm a professional athlete. I have just moved here and would love to meet new friends.",
  summary: "Sports is my main passion of course, but I also enjoy music and crypto.", status: "I'd like to find a good live music venue")
file = URI.open('https://images.unsplash.com/photo-1563452965085-2e77e5bf2607?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvb2wlMjBndXlzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
user11.photos.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
user11.save!

user12 = User.new(username: "Devon", email: "devon@user.com", first_name: "Devon", last_name: "Alzarian", password: "123456",
  bio: "Hi all, I'm Devon, accountant by day, DJ by night. Let's connect.",
  summary: "Very into music, also like gym and math.", status: "Keen to talk about algorithms")
file = URI.open('https://images.unsplash.com/photo-1503443207922-dff7d543fd0e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGNvb2wlMjBndXlzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
user12.photos.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
user12.save!

user13 = User.new(username: "Trent", email: "trent@user.com", first_name: "Trent", last_name: "Jones", password: "123456",
  bio: "I'm Trent. I work in mining industry (FIFO anyone?) and it gets a bit lonely sometimes out on the site. Keen to make professional contacts.",
  summary: "I love spending time in nature, running and coding.", status: "Any other wannabe coders online?")
file = URI.open('https://images.unsplash.com/photo-1598362471594-d1f1c97a155d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTEzfHxjb29sJTIwZ3V5c3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
user13.photos.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
user13.save!

user14 = User.new(username: "Mark", email: "mark@user.com", first_name: "Mark", last_name: "Li", password: "123456",
  bio: "Mark here! I'm trying to get ahead professionally, also keen to make new friends to hang out with.",
  summary: "I'm passionate about finance, gym and cooking.", status: "I'm looking for new training shoes, thoughts?")
file = URI.open('https://images.unsplash.com/photo-1540569014015-19a7be504e3a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OTF8fGNvb2wlMjBndXlzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
user14.photos.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
user14.save!

user15 = User.new(username: "Jim", email: "jim@user.com", first_name: "Jim", last_name: "Boylan", password: "123456",
  bio: "Hey I'm Jim! Engineer by profession, musician at heart. Let's connect.",
  summary: "I love music, gym and coding.", status: "Any other hikers online?")
file = URI.open('https://images.unsplash.com/photo-1485528562718-2ae1c8419ae2?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fGNvb2wlMjBndXlzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
user15.photos.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
user15.save!

user16 = User.new(username: "paul", email: "paul@user.com", first_name: "Paul", last_name: "G.", password: "123456",
  bio: "Hey everyone! I’m Paul and I’m a yoga instructor but have a mix of different interests. I’m looking for someone to invest in Dogecoin with. ",
  summary: "Crypto and yoga are my passions", status: "Anyone know a crypto investor?")
file = URI.open('https://images.unsplash.com/photo-1523398002811-999ca8dec234?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGNvb2wlMjBndXl8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
user16.photos.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
user16.save!

user17 = User.new(username: "Mick", email: "mick@user.com", first_name: "Mick", last_name: "Smythe", password: "123456",
  bio: "Hey! I’m Mick. I work as a chef and I'm looking for people to start a restaurant with.",
  summary: "I'm a foodie but also like AFL and gardening.", status: "I have an idea for a food van, interested?")
file = URI.open('https://images.unsplash.com/photo-1493752603190-08d8b5d1781d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y29vbCUyMGd1eXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
user17.photos.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
user17.save!

user18 = User.new(username: "Barry", email: "barry@user.com", first_name: "Barry", last_name: "Varnsen", password: "123456",
  bio: "Barry here. I am an entrepreneur, keen to connect with other business owners.",
  summary: "I work a lot, but enjoy the occasional sailing and rock climbing.", status: "Any other entrepreneurs online?")
file = URI.open('https://images.unsplash.com/photo-1526946096696-3278a850d5ef?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDR8fGNvb2wlMjBndXl8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
user18.photos.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
user18.save!

user19 = User.new(username: "Natalie", email: "natalie@user.com", first_name: "Natalie", last_name: "Olson", password: "123456",
  bio: "Hi I'm Natalie! I am currently studying an arts degree. I'd like to meet others in the same field.",
  summary: "Arts, pilates and poetry are close to my heart.", status: "I'm thinking of putting my own exhibition together!")
file = URI.open('https://images.unsplash.com/photo-1578979879663-4ba6a968a50a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y29vbCUyMGdpcmx8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
user19.photos.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
user19.save!

user20 = User.new(username: "maryam", email: "maryam@user.com", first_name: "Maryam", last_name: "Bafande", password: "123456",
  bio: "Hey all, I'm Marayam (call me Maz)! I am new in town and work as a doctor. I'm keen to make new friends.",
  summary: "Dancing, cooking and movies.", status: "Keen to grab a coffee and chat about medicine, or anything.")
file = URI.open('https://images.unsplash.com/photo-1619286188088-de820bdc1230?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTN8fGNvb2wlMjBnaXJsfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
user20.photos.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
user20.save!

puts "Creating ties"
tie1 = Tie.create!(user1_id: user1.id, user2_id: user2.id)
tie2 = Tie.create!(user1_id: user1.id, user2_id: user3.id)
tie3 = Tie.create!(user1_id: user1.id, user2_id: user4.id)
tie4 = Tie.create!(user1_id: user1.id, user2_id: user5.id)
tie5 = Tie.create!(user1_id: user1.id, user2_id: user6.id)
tie6 = Tie.create!(user1_id: user1.id, user2_id: user7.id)
tie7 = Tie.create!(user1_id: user1.id, user2_id: user8.id)
tie8 = Tie.create!(user1_id: user1.id, user2_id: user9.id)
tie9 = Tie.create!(user1_id: user1.id, user2_id: user10.id)

tie10 = Tie.create!(user1_id: user2.id, user2_id: user11.id)
tie11 = Tie.create!(user1_id: user2.id, user2_id: user12.id)
tie12 = Tie.create!(user1_id: user2.id, user2_id: user13.id)
tie13 = Tie.create!(user1_id: user2.id, user2_id: user14.id)
tie14 = Tie.create!(user1_id: user2.id, user2_id: user15.id)
tie15 = Tie.create!(user1_id: user2.id, user2_id: user16.id)
tie16 = Tie.create!(user1_id: user2.id, user2_id: user17.id)
tie17 = Tie.create!(user1_id: user2.id, user2_id: user18.id)
tie18 = Tie.create!(user1_id: user2.id, user2_id: user19.id)
tie19 = Tie.create!(user1_id: user2.id, user2_id: user20.id)

puts "Creating interests"
interest1 = Interest.new(name: "Yoga")
file = URI.open('https://images.unsplash.com/photo-1570655652364-2e0a67455ac6?ixid=MnwxMjA3fDF8MHxzZWFyY2h8MXx8eW9nYXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
interest1.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest1.save!

interest2 = Interest.new(name: "Crypto")
file = URI.open('https://images.unsplash.com/photo-1622630998477-20aa696ecb05?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGNyeXB0b3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
interest2.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest2.save!

interest3 = Interest.new(name: "Music")
file = URI.open('https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bXVzaWN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
interest3.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest3.save!

interest4 = Interest.new(name: "Photography")
file = URI.open('https://images.unsplash.com/photo-1505739998589-00fc191ce01d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHBob3RvZ3JhcGh5fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
interest4.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest4.save!

interest5 = Interest.new(name: "Cooking")
file = URI.open('https://images.unsplash.com/photo-1543353071-873f17a7a088?ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODh8fGNvb2tpbmd8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
interest5.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest5.save!

interest6 = Interest.new(name: "Poetry")
file = URI.open('https://images.unsplash.com/photo-1473186505569-9c61870c11f9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cG9ldHJ5fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
interest6.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest6.save!

interest7 = Interest.new(name: "Dancing")
file = URI.open('https://images.unsplash.com/photo-1523354177913-be035fcee55e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cG9sZSUyMGRhbmNpbmd8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
interest7.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest7.save!

interest8 = Interest.new(name: "Gym")
file = URI.open('https://images.unsplash.com/photo-1468971050039-be99497410af?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzR8fGd5bXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
interest8.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest8.save!

interest9 = Interest.new(name: "Crossfit")
file = URI.open('https://images.unsplash.com/photo-1468971050039-be99497410af?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzR8fGd5bXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
interest9.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest9.save!

interest10 = Interest.new(name: "Running")
file = URI.open('https://images.unsplash.com/photo-1552674605-db6ffd4facb5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGZpdG5lc3N8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
interest10.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest10.save!

interest11 = Interest.new(name: "Pilates")
file = URI.open('https://images.unsplash.com/photo-1570655652364-2e0a67455ac6?ixid=MnwxMjA3fDF8MHxzZWFyY2h8MXx8eW9nYXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
interest11.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest11.save!

interest12 = Interest.new(name: "Fashion")
file = URI.open('https://images.unsplash.com/photo-1555580399-49e780f216b7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z29vZCUyMHZpYmVzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
interest12.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest12.save!

interest13 = Interest.new(name: "Reading")
file = URI.open('https://images.unsplash.com/photo-1519682337058-a94d519337bc?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Ym9va3N8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
interest13.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest13.save!

interest14 = Interest.new(name: "Arts")
file = URI.open('https://images.unsplash.com/photo-1555580399-49e780f216b7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z29vZCUyMHZpYmVzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
interest14.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest14.save!

interest15 = Interest.new(name: "Graffiti")
file = URI.open('https://images.unsplash.com/photo-1495482432709-15807c8b3e2b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z3JhZmZpdGl8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
interest15.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest15.save!

interest16 = Interest.new(name: "Law")
file = URI.open('https://images.unsplash.com/photo-1593115057322-e94b77572f20?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bGF3fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
interest16.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest16.save!

interest17 = Interest.new(name: "UX")
file = URI.open('https://images.unsplash.com/photo-1581291518633-83b4ebd1d83e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dXNlciUyMGV4cGVyaWVuY2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
interest17.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest17.save!

interest18 = Interest.new(name: "Math")
file = URI.open('https://images.unsplash.com/photo-1509228468518-180dd4864904?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fG1hdGh8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
interest18.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest18.save!

interest19 = Interest.new(name: "Programming")
file = URI.open('https://images.unsplash.com/photo-1542831371-29b0f74f9713?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZ3JhbW1pbmd8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
interest19.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest19.save!

interest20 = Interest.new(name: "AFL")
file = URI.open('https://images.unsplash.com/photo-1517137879134-48acfbe3be13?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YWZsfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
interest20.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest20.save!

interest21 = Interest.new(name: "Gardening")
file = URI.open('https://images.unsplash.com/photo-1485627658391-1365e4e0dbfe?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGdhcmRlbmluZ3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
interest21.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest21.save!

interest22 = Interest.new(name: "Sailing")
file = URI.open('https://images.unsplash.com/photo-1534296264129-b318f8140c27?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHNhaWxpbmd8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
interest22.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest22.save!

interest23 = Interest.new(name: "Rock Climbing")
file = URI.open('https://images.unsplash.com/photo-1516592673884-4a382d1124c2?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cm9jayUyMGNsaW1iaW5nfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
interest23.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest23.save!

interest24 = Interest.new(name: "Movies")
file = URI.open('https://images.unsplash.com/photo-1585647347384-2593bc35786b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bW92aWVzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
interest24.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest24.save!

interest25 = Interest.new(name: "Travel")
file = URI.open('https://images.unsplash.com/photo-1469474968028-56623f02e42e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDZ8fHRyYXZlbHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
interest25.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest25.save!

interest26 = Interest.new(name: "Pole Dancing")
file = URI.open('https://images.unsplash.com/photo-1523354177913-be035fcee55e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cG9sZSUyMGRhbmNpbmd8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
interest26.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest26.save!

interest27 = Interest.new(name: "Cycling")
file = URI.open('https://images.unsplash.com/photo-1485965120184-e220f721d03e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmljeWNsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
interest27.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest27.save!

interest28 = Interest.new(name: "Swimming")
file = URI.open('https://images.unsplash.com/photo-1498747946579-bde604cb8f44?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cG9vbHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
interest28.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest28.save!

interest29 = Interest.new(name: "Hiking")
file = URI.open('https://images.unsplash.com/photo-1448375240586-882707db888b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Zm9yZXN0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60')
interest29.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest29.save!

interest30 = Interest.new(name: "Sports")
file = URI.open('https://images.unsplash.com/photo-1474546652694-a33dd8161d66?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8c3BvcnR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
interest30.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest30.save!

interest31 = Interest.new(name: "Finance")
file = URI.open('https://images.unsplash.com/photo-1567427017947-545c5f8d16ad?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZmluYW5jZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
interest31.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest31.save!

interest32 = Interest.new(name: "Startup")
file = URI.open('https://images.unsplash.com/photo-1489533119213-66a5cd877091?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8c3RhcnR1cHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
interest32.photo.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
interest32.save!

puts "Creating user interests"
user_interest1 = UserInterest.create!(user_id: user1.id, interest_id: interest9.id)
user_interest2 = UserInterest.create!(user_id: user1.id, interest_id: interest2.id)
user_interest3 = UserInterest.create!(user_id: user1.id, interest_id: interest12.id)

user_interest4 = UserInterest.create!(user_id: user2.id, interest_id: interest8.id)
user_interest5 = UserInterest.create!(user_id: user2.id, interest_id: interest2.id)
user_interest6 = UserInterest.create!(user_id: user2.id, interest_id: interest5.id)

user_interest7 = UserInterest.create!(user_id: user3.id, interest_id: interest4.id)
user_interest8 = UserInterest.create!(user_id: user3.id, interest_id: interest10.id)

user_interest9 = UserInterest.create!(user_id: user4.id, interest_id: interest2.id)
user_interest10 = UserInterest.create!(user_id: user4.id, interest_id: interest12.id)
user_interest11 = UserInterest.create!(user_id: user4.id, interest_id: interest13.id)

user_interest12 = UserInterest.create!(user_id: user5.id, interest_id: interest12.id)
user_interest13 = UserInterest.create!(user_id: user5.id, interest_id: interest14.id)
user_interest14 = UserInterest.create!(user_id: user5.id, interest_id: interest15.id)

user_interest15 = UserInterest.create!(user_id: user6.id, interest_id: interest3.id)
user_interest16 = UserInterest.create!(user_id: user6.id, interest_id: interest6.id)
user_interest17 = UserInterest.create!(user_id: user6.id, interest_id: interest16.id)

user_interest18 = UserInterest.create!(user_id: user7.id, interest_id: interest4.id)
user_interest19 = UserInterest.create!(user_id: user7.id, interest_id: interest9.id)
user_interest20 = UserInterest.create!(user_id: user7.id, interest_id: interest12.id)

user_interest21 = UserInterest.create!(user_id: user8.id, interest_id: interest1.id)
user_interest22 = UserInterest.create!(user_id: user8.id, interest_id: interest14.id)
user_interest23 = UserInterest.create!(user_id: user8.id, interest_id: interest17.id)

user_interest24 = UserInterest.create!(user_id: user9.id, interest_id: interest11.id)
user_interest25 = UserInterest.create!(user_id: user9.id, interest_id: interest12.id)
user_interest26 = UserInterest.create!(user_id: user9.id, interest_id: interest14.id)

user_interest27 = UserInterest.create!(user_id: user10.id, interest_id: interest11.id)
user_interest28 = UserInterest.create!(user_id: user10.id, interest_id: interest3.id)
user_interest29 = UserInterest.create!(user_id: user10.id, interest_id: interest8.id)

user_interest30 = UserInterest.create!(user_id: user11.id, interest_id: interest2.id)
user_interest31 = UserInterest.create!(user_id: user11.id, interest_id: interest3.id)
user_interest32 = UserInterest.create!(user_id: user11.id, interest_id: interest30.id)

user_interest33 = UserInterest.create!(user_id: user12.id, interest_id: interest8.id)
user_interest34 = UserInterest.create!(user_id: user12.id, interest_id: interest3.id)
user_interest35 = UserInterest.create!(user_id: user12.id, interest_id: interest18.id)

user_interest36 = UserInterest.create!(user_id: user13.id, interest_id: interest10.id)
user_interest37 = UserInterest.create!(user_id: user13.id, interest_id: interest19.id)
user_interest38 = UserInterest.create!(user_id: user13.id, interest_id: interest29.id)

user_interest39 = UserInterest.create!(user_id: user14.id, interest_id: interest5.id)
user_interest40 = UserInterest.create!(user_id: user14.id, interest_id: interest8.id)
user_interest41 = UserInterest.create!(user_id: user14.id, interest_id: interest31.id)

user_interest42 = UserInterest.create!(user_id: user15.id, interest_id: interest3.id)
user_interest43 = UserInterest.create!(user_id: user15.id, interest_id: interest8.id)
user_interest44 = UserInterest.create!(user_id: user15.id, interest_id: interest19.id)

user_interest45 = UserInterest.create!(user_id: user16.id, interest_id: interest1.id)
user_interest46 = UserInterest.create!(user_id: user16.id, interest_id: interest2.id)

user_interest47 = UserInterest.create!(user_id: user17.id, interest_id: interest5.id)
user_interest48 = UserInterest.create!(user_id: user17.id, interest_id: interest20.id)
user_interest49 = UserInterest.create!(user_id: user17.id, interest_id: interest21.id)

user_interest50 = UserInterest.create!(user_id: user18.id, interest_id: interest22.id)
user_interest51 = UserInterest.create!(user_id: user18.id, interest_id: interest23.id)
user_interest52 = UserInterest.create!(user_id: user18.id, interest_id: interest32.id)

user_interest53 = UserInterest.create!(user_id: user19.id, interest_id: interest6.id)
user_interest54 = UserInterest.create!(user_id: user19.id, interest_id: interest11.id)
user_interest55 = UserInterest.create!(user_id: user19.id, interest_id: interest14.id)

user_interest56 = UserInterest.create!(user_id: user20.id, interest_id: interest5.id)
user_interest57 = UserInterest.create!(user_id: user20.id, interest_id: interest7.id)
user_interest58 = UserInterest.create!(user_id: user20.id, interest_id: interest24.id)

puts "Creating referrals"
ref1 = Referral.create!(reason: "Adam knows a lot about crypto, suggest you catch up", referrer_user_id: user1.id, recommended_user_id: user2.id, to_user_id: user4.id)
ref2 = Referral.create!(reason: "Joe knows a lot about cameras, you should chat.", referrer_user_id: user1.id, recommended_user_id: user3.id, to_user_id: user7.id)
ref3 = Referral.create!(reason: "Amy is an artist, I think you have a lot to talk about", referrer_user_id: user1.id, recommended_user_id: user5.id, to_user_id: user9.id)

ref4 = Referral.create!(reason: "Fred is also into music", referrer_user_id: user2.id, recommended_user_id: user11.id, to_user_id: user12.id)
ref5 = Referral.create!(reason: "Fred has been investing in crypto, you should talk.", referrer_user_id: user2.id, recommended_user_id: user11.id, to_user_id: user16.id)
ref6 = Referral.create!(reason: "Mark is an amazing cook!", referrer_user_id: user2.id, recommended_user_id: user14.id, to_user_id: user20.id)
