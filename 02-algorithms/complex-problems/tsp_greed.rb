class City

  attr_accessor  :city
  attr_accessor  :distances
  attr_accessor  :visited
  attr_accessor  :neighbors

  def initialize(city)
    @city = city
    @distances = []
    @neighbors = []
    @visited = []
  end


  def nearest_possible_neighbor(current_city)
    #SET neighbor_cities TO current_city.neighbors
    neighbor_cities = current_city.neighbors

    # SET nearest_neighbor TO first element in
    neighbor_cities = nearest_neighbor[0]

    #FOR current_neighbor IN neighbor_cities
    for current_neighbor in neighbor_cities

      # IF current_neighbor.visited IS FALSE AND current_neighbor.distance < nearest_neighbor.distance
      if current_neighbor.visited == false && current_neighbor.distance < nearest_neighbor.distance
        #  ASSIGN nearest_neighbor TO current_neighbor
        nearest_neighbor = current_neighbor
        #END IF
      end
      #END FOR
    end
    nearest_neighbor
  end




end
