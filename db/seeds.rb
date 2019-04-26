stations = [
  'Moscow',
  'Berlin',
  'London',
  'Krasnodar',
  'Tula',
]

stations.each {|item| RailwayStation.create(title: item)}
