stations = [
  'Moscow',
  'Berlin',
  'London',
  'Krasnodar',
  'Tula',
]

stations.each {|item| RailwayStation.create(title: item)}

10.times {|i| Train.create(number: i.to_s)}
