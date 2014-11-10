20.times do
  Interest.create(remote_photo_url: "http://lorempixel.com/500/500/people/", url: "http://www.google.com", notes: "blah blah blah")

  Interest.create(remote_photo_url: "http://lorempixel.com/500/500/nature/", url: "http://www.google.com", notes: "blah blah blah")

  Interest.create(remote_photo_url: "http://lorempixel.com/500/500/food/", url: "http://www.google.com", notes: "blah blah blah")
end
