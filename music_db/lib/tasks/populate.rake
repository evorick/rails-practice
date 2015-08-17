namespace :db do
  desc "Clear the DB and fill with excellent sample data"
  task :populate =>  :environment do
    require 'populator'
    require 'faker'

    #Wipe the DB
    [Genre, Artist, Song].each(&:destroy_all)

    Genre.populate 5 do |genre|
      genre.name = Faker::Hacker.noun
      Artist.populate 5..10 do |artist|
        artist.name = Faker::Name.first_name
        artist.genre_id = genre.id

        Song.populate 5..10 do |song|
          song.name = Faker::Company.catch_phrase
          song.artist_id = artist.id

        end #Song end
      end #Artist end
    end # Genre end
    puts "Booya! Done populating!"
  end
end