stations = [
  'Moscow',
  'Berlin',
  'London',
  'Krasnodar',
  'Tula'
]

stations.each { |item| RailwayStation.create(title: item) }

10.times { |i| Train.create(number: rand(1000..9999).to_s + "_#{i}") }

routes = []

stations.each_with_index do |first, idx1|
  stations.each_with_index do |second, idx2|
    routes << "#{first} - #{second}" if idx1 != idx2
  end
end

routes.each { |item| Route.create(name: item) }
