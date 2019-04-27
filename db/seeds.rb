stations = [
  'Moscow',
  'Berlin',
  'London',
  'Krasnodar',
  'Tula',
]

stations.each {|item| RailwayStation.create(title: item)}

10.times {|i| Train.create(number: rand(1000..9999).to_s + "_#{i}")}
