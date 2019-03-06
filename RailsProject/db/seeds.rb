# frozen_string_literal: true

Player.destroy_all
Team.destroy_all
Battleground.destroy_all

7.times do
  battleground = Battleground.create(name: Faker::Games::HeroesOfTheStorm.unique.battleground,
                                     location: Faker::Games::Fallout.unique.location)

  7.times do
    team = battleground.teams.create(name: Faker::Games::Dota.unique.team,
                                     quote: Faker::Games::Fallout.quote)

    3.times do
      player = team.players.create(name: Faker::Games::ElderScrolls.unique.name,
                                   specialty: Faker::Games::Heroes.specialty,
                                   battleground: battleground)
    end
  end
end

puts "Number of battlegrounds: #{Battleground.count}"
puts "Number of players: #{Player.count}"
puts "Number of teams: #{Team.count}"
