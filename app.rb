require ('sinatra')
require ('sinatra/reloader')
also_reload('lib/**/*.rb')
require ('./lib/maze')
require ('pry')

ROOM = "Room1"
get ('/') do
  ROOM = "Room1"
  @room = ROOM
  maze = Maze.new
  maze.find_direction(@room)
  @dir = maze.direction
  erb(:input)
end

post ('/output') do
  @msg = ""
  dir = params.fetch('direction')
  maze = Maze.new
  ROOM = maze.maze_room[ROOM][dir]
  if ROOM == "Room9"
    erb(:success)
  else
    @room = ROOM
    maze.find_direction(@room)
    @dir = maze.direction
    if @dir.length == 1
      @msg = 'Sorry you are stuck go back'
    end
    erb(:input)
  end

end
