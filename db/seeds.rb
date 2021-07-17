require 'open-uri'

# Optional: you can delete existing data by uncommenting below 2 lines
Referral.destroy_all
Tie.destroy_all
UserInterest.destroy_all
Interest.destroy_all
User.destroy_all

user1 = User.new(username: "mary", email: "mary@user.com", first_name: "Mary", last_name: "Smith", password: "123456")
file = URI.open('https://unsplash.com/photos/NUEWYsqzHxM')
user1.photos.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
user1.save!


# user2 = User.new(email: "adam@user.com", first_name: "Adam", last_name: "Sandler", password: "123456")
# user3 = User.new(email: "joe@user.com", first_name: "Joe", last_name: "Collins", password: "123456")
# user4 = User.new(email: "phil@user.com", first_name: "Phil", last_name: "Collins", password: "123456")
# user5 = User.new(email: "amy@user.com", first_name: "Amy", last_name: "Adams", password: "123456")



puts "Creating stuff"

# costume = Costume.new(title: "Little Mermaid Women's Ursula Prestige Costume", description: "This is a Little Mermaid Womens Ursula Prestige Costume.",
#   price: 10, user_id: user1.id)

# file = URI.open('https://images.halloweencostumes.com.au/products/59364/1-1/disney-little-mermaid-womens-ursula-prestige-costume.jpg')
# costume.photos.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
# costume.save!

# costume2 = Costume.new(title: "Adult Mermaid Costume", description: "So why don't you slip into this cute undersea ensemble, and make some waves of your own?!",
#   price: 25, user_id: user1.id)
# file = URI.open('https://images.halloweencostumes.com.au/products/32722/1-1/adult-mermaid-costume.jpg')
# costume2.photos.attach(io: file, filename: 'photo.jpg', content_type: 'image/jpg')
# costume2.save!
