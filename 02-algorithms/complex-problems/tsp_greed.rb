$visited = []

class City

  attr_accessor  :city
  attr_accessor  :visited
  attr_accessor  :neighbors

  def initialize(city)
    @city = city
    @neighbors = Hash.new
  end
end


#RETURNS A CITY CLASS OBJECT.
def nearest_possible_neighbor(current_city)
  current_city.neighbors
  neighbor_cities = current_city.neighbors


  #*SORT NEIGHBOR CITIES BY DISTANCE FROM CURRENT CITY
  sorted_cities = neighbor_cities.sort_by{|k,v| v[:distance] }


  i = 0

  while $visited.include?(sorted_cities[i][1][:city].city) == true do
    i += 1
  end
  next_city = sorted_cities[i][1][:city]


end


def route(starting_city)

  total_stops = starting_city.neighbors.length + 1
  current_city = starting_city
  $visited.push(starting_city.city)


  until $visited.length == total_stops  do
    next_stop = nearest_possible_neighbor(current_city)
    $visited << next_stop.city
    current_city = next_stop
    puts next_stop.city
  end

  #takes the salesman back home!
  if $visited.length == total_stops
    $visited.push(starting_city.city)
  end

  return $visited

end


new_york = City.new("New York")
seattle = City.new("Seattle")
oakland = City.new("Oakland")
miami = City.new("Miami")
santo_domingo = City.new("Santo Domingo")

new_york.neighbors = {"Seattle" => {distance: 2852, city: seattle} ,"Oakland" => {distance: 2896, city: oakland}, "Miami" => {city: miami, distance: 1288},"Santo Domingo" => {distance: 1554, city: santo_domingo}}

seattle.neighbors = {"New York" => {city: new_york, distance: 2852}, "Oakland" => {city: oakland, distance: 800},"Miami" =>{city: miami, distance: 3300}, "Santo Domingo" =>{ city: santo_domingo, distance: 3547 }}

oakland.neighbors ={"New York" => {city: new_york, distance: 2896} , "Seattle" => {distance: 800, city: seattle}, "Miami" => {city: miami, distance: 3100}, "Santo Domingo" =>{ city: santo_domingo, distance: 3400} }

miami.neighbors = {"New York" => {city: new_york, distance: 1288}, "Seattle" => {distance: 3300, city: seattle}, "Oakland" => {distance: 3100, city: oakland}, "Santo Domingo" => {distance: 824, city: santo_domingo}}

santo_domingo.neighbors = {"New York" => {city: new_york, distance: 1554}, "Seattle" => {distance: 3547, city: seattle}, "Oakland" => {city: oakland, distance: 3400}, "Miami" => {city: miami, distance: 824}}


k = route(oakland)
