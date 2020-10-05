5.times do
    Post.create(title: Faker::Book.title, 
    description: Faker::TvShows::Seinfeld.quote,
     genre: Faker::Book.genre,
      author: Faker::TvShows::Seinfeld.character,
       review: Faker::TvShows::TheFreshPrinceOfBelAir.quote)
end
