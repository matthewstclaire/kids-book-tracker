Student.destroy_all
Coffee.destroy_all

5.times do
    Post.create(title: Faker::Book.title, 
    description: Faker::TvShows::Seinfeld.quote,
     genre: Faker::Book.genre,
      author: Faker::TvShows::Seinfeld.character,
       review: Faker::TvShows::TheFreshPrinceOfBelAir.quote)
end

5.times do
    User.create(username: Faker::TvShows::RickAndMorty.character,
     password: Faker::TvShows::RickAndMorty.location,
      goal: rand(1..20))
end
