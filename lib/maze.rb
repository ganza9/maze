class Maze
  attr_accessor :maze_room, :direction, :rooms
  def initialize
    @maze_room = {
      "Room1" => {"west" => "Room2", "south" => "Room4"},
      "Room2" => {"west" => "Room3", "south" => "Room5"},
      "Room3" => {"east" => "Room2"},
      "Room4" => {"west" => "Room5", "south" => "Room7"},
      "Room5" => {"north" => "Room2", "east" => "Room4"},
      "Room6" => {"east" => "Room5"},
      "Room7" => {"north" => "Room4", "west" => "Room8"},
      "Room8" => {"east" => "Room7", "west" => "Room9"}
    }
    @direction = []
    @rooms = []
  end

  def find_direction(room_no)
    @maze_room[room_no].each do |dir ,room|
      @direction.push(dir)
      @rooms.push(room)
    end
  end

end
