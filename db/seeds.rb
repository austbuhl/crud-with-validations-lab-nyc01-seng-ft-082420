Song.destroy_all
# title, released, release_year, artist_name, genre
15.times do 
    Song.create(title: Faker::Music::GratefulDead.song, released: true, release_year: rand(1970..2019), artist_name: Faker::Music::GratefulDead.player, genre: Faker::Music.genre)
end

15.times do 
    Song.create(title: Faker::Music::GratefulDead.song, released: false, release_year: rand(1970..2019), artist_name: Faker::Music::GratefulDead.player, genre: Faker::Music.genre)
end