# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
puts "starting the seeds"
puts "reseting instances"
Booking.destroy_all
StarPart.destroy_all
User.destroy_all
puts "reseting instances done"

require 'open-uri'

tanguy = User.new({
  username: "Tanguy",
  first_name: "Tanguy",
  last_name: "Blondiaux",
  email: "tanguy.blondiaux@gmail.com",
  password: "azerty"

  })

file = URI.open('https://kitt.lewagon.com/placeholder/users/Tanguy75')
tanguy.photo.attach(io: file, filename: 'tanguy-image.jpg', content_type: 'image/jpg')
tanguy.save

sergio = User.new({
  username: "Sergio",
  first_name: "Sergio",
  last_name: "Delgado",
  email: "sergio.delgado@gmail.com",
  password: "azerty"
  })

file = URI.open('https://kitt.lewagon.com/placeholder/users/Tanguy75')
sergio.photo.attach(io: file, filename: 'sergio-image.jpg', content_type: 'image/jpg')
sergio.save

adelaide = User.new({
  username: "Adelaide",
  first_name: "Adelaide",
  last_name: "Blot",
  email: "adelaide.blot@gmail.com",
  password: "azerty"
  })

file = URI.open('https://kitt.lewagon.com/placeholder/users/AdelaideEurope')
adelaide.photo.attach(io: file, filename: 'ade-image.jpg', content_type: 'image/jpg')
adelaide.save

thibaud = User.new({
  username: "Thibaud",
  first_name: "Thibaud",
  last_name: "Allain",
  email: "thibaud.allain@gmail.com",
  password: "azerty"
  })

file = URI.open('https://kitt.lewagon.com/placeholder/users/AdelaideEurope')
thibaud.photo.attach(io: file, filename: 'ade-image.jpg', content_type: 'image/jpg')
thibaud.save

rdj = StarPart.new({
  name_of_star: "Robert Downey Jr.",
  category: "head",
  description: "No bad hair day anymore… and you don't even have to buy a wig!",
  name_of_part: "hair",
  rating: 4,
  price: 3000
})

rdj.user_id = tanguy.id

file = URI.open('https://pmcvariety.files.wordpress.com/2017/03/robert-downey-jr1.jpg?w=1000')
rdj.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
rdj.save

alpacino = StarPart.new({
  name_of_star: "Al Pacino",
  category: "head",
  description: "Moustaches are back in trend… get yours!",
  name_of_part: "moustache",
  rating: 4,
  price: 5000
})

alpacino.user_id = tanguy.id

file = URI.open('https://c.wallhere.com/photos/de/91/al_pacino_brooding_man_actor_celebrity_beard_mustache_eyes-733663.jpg!d')
alpacino.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
alpacino.save

adriana = StarPart.new({
  name_of_star: "Adriana Lima",
  category: "bottom",
  description: "Get those superb legs to be the queen of the beach",
  name_of_part: "legs",
  rating: 4,
  price: 100000
})

adriana.user_id = tanguy.id

file = URI.open('https://www.fashiongonerogue.com/wp-content/uploads/2019/03/Adriana-Lima-Schutz-Resort-2019-Campaign03.jpg')
adriana.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
adriana.save

badbunny = StarPart.new({
  name_of_star: "Bad Bunny",
  category: "head",
  description: "Diamond teeth… Sparkle from head to mouth",
  name_of_part: "teeth",
  rating: 3,
  price: 1000,
})

badbunny.user_id = adelaide.id

file = URI.open('https://images1.miaminewtimes.com/imager/u/original/10269091/bad-bunny2.jpg')
badbunny.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
badbunny.save

niki = StarPart.new({
  name_of_star: "Nicki Minaj",
  category: "bottom",
  description: "With this butt, you'll be a twerking pro in the blink of an eye",
  name_of_part: "butt",
  rating: 5,
  price: 10000
})

niki.user_id = adelaide.id

file = URI.open('https://galoremag.com/wp-content/uploads/2015/06/galore_mag_nicki1-1024x576.jpg')
niki.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
niki.save

jason = StarPart.new({
  name_of_star: "Jason Statham",
  category: "bust",
  description: "Who has never dreamt of having these abs? But going to the gym… ugh, no, thanks!",
  name_of_part: "abs",
  rating: 5,
  price: 10000
})

jason.user_id = thibaud.id

file = URI.open('https://i.ytimg.com/vi/VtbS8mNpgus/maxresdefault.jpg')
jason.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
jason.save

gad = StarPart.new({
  name_of_star: "Gad Elmaleh",
  category: "head",
  description: "Beautiful blue eyes to match the color of the sea during your holidays at the beach",
  name_of_part: "eyes",
  rating: 5,
  price: 6000
})

gad.user_id = thibaud.id

file = URI.open('https://s3.amazonaws.com/webassets.ticketmob.com/LS/images/comedians/BDCAB0C9-B940-0484-9FFE4ECFB657E030.jpg')
gad.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
gad.save

jolie = StarPart.new({
  name_of_star: "Angelina Jolie",
  category: "head",
  description: "Imagine the kisses you'll give with those lips. You'll even want to kiss yourself",
  name_of_part: "lips",
  rating: 5,
  price: 8000
})

jolie.user_id = adelaide.id

file = URI.open('https://149351455.v2.pressablecdn.com/wp-content/uploads/2016/09/angelina-jolie-lips-d4a8f.jpg')
jolie.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
jolie.save

lebron = StarPart.new({
  name_of_star: "LeBron James",
  category: "bust",
  description: "Aaaaaand, duuuuuunk! These arms will give you superpowers… use with caution",
  name_of_part: "arms",
  rating: 4,
  price: 20000
})

lebron.user_id = sergio.id

file = URI.open('https://a.espncdn.com/photo/2019/0201/r496197_1296x729_16-9.jpg')
lebron.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
lebron.save

scarlett = StarPart.new({
  name_of_star: "Scarlett Johansson",
  category: "bust",
  description: "With this bust, we bet you will you want to show off your cleavage all day long… Look me in the eyes!",
  name_of_part: "breasts",
  rating: 5,
  price: 50000
})
scarlett.user_id = thibaud.id

file = URI.open('https://www.celebplasticsurgeryonline.com/wp-content/uploads/2015/09/Scarlett-Johansson-before-breast-reduction-02.jpg')
scarlett.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
scarlett.save


kim = StarPart.new({
  name_of_star: "Kim Kardashian",
  category: "bottom",
  description: "Isn't this butt famous for crashing the Internet? You need it!",
  name_of_part: "butt",
  rating: 5,
  price: 30000
})

kim.user_id = sergio.id

file = URI.open('https://images.complex.com/complex/image/upload/c_limit,dpr_auto,q_90,w_720/fl_lossy,pg_1/lzbumkjdcyd8aw22ok3m.jpg')
kim.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
kim.save

jenniferlopez = StarPart.new({
  name_of_star: "Jennifer Lopez",
  category: "bottom",
  description: "Curves, curves, curves!",
  name_of_part: "butt",
  rating: 3,
  price: 1500
})

jenniferlopez.user_id = adelaide.id

file = URI.open('https://www.hypefresh.co/wp-content/uploads/2019/07/Jennifer-Lopez-Ass-Ate-Worthy-At-50.jpg')
jenniferlopez.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
jenniferlopez.save

queenb = StarPart.new({
  name_of_star: "Queen B",
  category: "bottom",
  description: "So many hours of practice in just one click 👇 Book now",
  name_of_part: "butt",
  rating: 3,
  price: 90000
})

queenb.user_id = sergio.id

file = URI.open('https://pbs.twimg.com/media/CoTArKIWcAAV4i0.jpg')
queenb.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
queenb.save

cardib = StarPart.new({
  name_of_star: "Cardi B",
  category: "bottom",
  description: "Caution: this butt might bust out!",
  name_of_part: "butt",
  rating: 3,
  price: 90000
})

cardib.user_id = tanguy.id

file = URI.open('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/cardi-b-finesse-1523301612.jpg?crop=1xw:1xh;center,top&resize=480:*')
cardib.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
cardib.save





Booking.create!(
  start_date: Time.new(2020, 1, 1, 22, 35, 0),
  end_date: Time.new(2020, 1, 19, 22, 35, 0),
  user_id: thibaud.id,
  star_part_id: scarlett.id
  )

Booking.create!(
  start_date: Time.new(2019, 1, 1, 22, 35, 0),
  end_date: Time.new(2019, 8, 19, 22, 35, 0),
  user_id: sergio.id,
  star_part_id: gad.id
  )

Booking.create!(
  start_date: Time.new(2020, 1, 1, 22, 35, 0),
  end_date: Time.new(2020, 1, 19, 22, 35, 0),
  user_id: adelaide.id,
  star_part_id: jolie.id
  )

Booking.create!(
  start_date: Time.new(2019, 1, 1, 22, 35, 0),
  end_date: Time.new(2019, 8, 19, 22, 35, 0),
  user_id: sergio.id,
  star_part_id: alpacino.id
  )

Booking.create!(
  start_date: Time.new(2020, 1, 1, 22, 35, 0),
  end_date: Time.new(2020, 1, 19, 22, 35, 0),
  user_id: tanguy.id,
  star_part_id: jason.id
  )

Booking.create!(
  start_date: Time.new(2019, 1, 1, 22, 35, 0),
  end_date: Time.new(2019, 8, 19, 22, 35, 0),
  user_id: thibaud.id,
  star_part_id: niki.id
  )

Booking.create!(
  start_date: Time.new(2020, 1, 1, 22, 35, 0),
  end_date: Time.new(2020, 1, 19, 22, 35, 0),
  user_id: thibaud.id,
  star_part_id: adriana.id
  )

Booking.create!(
  start_date: Time.new(2019, 1, 1, 22, 35, 0),
  end_date: Time.new(2019, 8, 19, 22, 35, 0),
  user_id: adelaide.id,
  star_part_id: jason.id
  )

puts "Seeds finished"



