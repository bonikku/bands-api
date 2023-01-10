require 'faker'

i = 1
z = 1
c = 1

30.times do
  Band.create(name: "#{Faker::Music.band}",
              origin: "#{Faker::Address.country}",
              labels: "#{Faker::Vehicle.style}, #{Faker::Hacker.abbreviation}, #{Faker::Food.fruits}",
              formed_in_year: rand(1950..2000))
  i += 1
  rand(3..6).times do
    Member.create(band_id: z,
                  name: "#{Faker::Name.name}",
                  born_year: rand(1940..1998),
                  instrument: "#{Faker::Music.instrument}"
    )
    c += 1
  end
  z += 1
end
puts "Created #{i - 1} bands"
puts "Created #{c - 1} members"

