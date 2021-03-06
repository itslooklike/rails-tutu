# RailwayStation
stations = [
  'Moscow',
  'Berlin',
  'London',
  'Krasnodar',
  'Tula'
]

stations.each { |item| RailwayStation.create(title: item) }

# Train
10.times { |i| Train.create(number: rand(1000..9999).to_s + "_#{i}") }

# Route
routes = []

stations.each_with_index do |first, idx1|
  stations.each_with_index do |second, idx2|
    routes << "#{first} - #{second}" if idx1 != idx2
  end
end

routes.each { |item| Route.create(name: item) }

# User
[
  { first_name: 'Mark', last_name: 'Wollberg' },
  { first_name: 'Bill', last_name: 'Murray' },
  { first_name: 'Jessica', last_name: 'Simpson' }
].each { |item| User.create(item) }

# WagonType
['platskard', 'coupe'].each { |item| WagonType.create(name: item) }

# Wagon
Wagon.create(train: Train.first, wagon_type: WagonType.first, seats_top: 3, seats_bottom: 3)
Wagon.create(train: Train.first, wagon_type: WagonType.last, seats_top: 2, seats_bottom: 2)
