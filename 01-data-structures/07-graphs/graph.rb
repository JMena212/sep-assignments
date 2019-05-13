require relative 'actor_data'

class Node

  attr_accessor  :name
  attr_accessor  :film_actor_hash

   def initialize(name)
      @name = name
      @film_actor_hash = Hash.new{}
   end

end

class Graph

  def initialize
    @checked_actors
    @edges
  end



def find_kevin_bacon(node)
    @checked_actors = []  #so that we don't check co-stars various times
    @edges = [] #path to KB

    @checked_actors.push(node)

    while @checked_actors.length != 0 do
      actor_node = @checked_actors.shift  # creates a queue to make sure we check each movie and all of its actors
      puts "We are checking #{actor_node.name}"
      actor_node.film_actor_hash.each do |film, list_actors|
      puts "Film we're checking is  #{film}"
      @edges.push(film) unless @edges.include?(film) || @edges.length >= 6
      list_actors.each do |actor|

        if actor.name != "Kevin Bacon" && !@checked_actors.include?(actor)
        puts "adding this actor to checked --> #{actor.name}"
            @checked_actors.push(actor)
        elsif actor.name == "Kevin Bacon"
        puts "WE FOUND KEVIN BACON"
            return @edges
        end
      end
      end
    end

    #see if we can remove MIssion impossible



end


end



test = Graph.new
test.find_kevin_bacon(zoe_saldana)
