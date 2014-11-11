1.times do
  Interest.create(remote_photo_url: "http://lorempixel.com/500/500/nature/", url: Faker::Internet.url, notes: Faker::Hacker.say_something_smart)

  Interest.create(remote_photo_url: "http://lorempixel.com/500/500/food/", url: Faker::Internet.url, notes: Faker::Hacker.say_something_smart)

  Interest.create(remote_photo_url: "http://lorempixel.com/500/500/city/", url: Faker::Internet.url, notes: Faker::Hacker.say_something_smart)

  Interest.create(remote_photo_url: "http://lorempixel.com/500/500/cats/", url: Faker::Internet.url, notes: Faker::Hacker.say_something_smart)

Interest.create(remote_photo_url: "http://lorempixel.com/500/500/animals/", url: Faker::Internet.url, notes: Faker::Hacker.say_something_smart)
end
