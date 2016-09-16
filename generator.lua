genre_list = {}
theme_list = {}
genrefile = io.open("genres", "r");
themefile = io.open("themes", "r");
math.randomseed(os.time())

for i in genrefile:lines() do
	table.insert (genre_list, i);
end

for i in themefile:lines() do
	table.insert (theme_list, i);
end

if arg[1] == nil or arg[2] == nil or arg[3] == nil then
	io.write("\nThe Official Enough Lua Video Game Generator!\n\nNumber of genres? (2 or 3 is good)\n")
	genre_count = io.read()
	io.write("Number of themes? (3 or 4 is sufficient)\n")
	theme_count = io.read()
	io.write("Number of ideas? (YOU CAN NEVER HAVE ENOUGH)\n")
	idea_count = io.read()
else
	genre_count = arg[1]
	theme_count = arg[2]
	idea_count = arg[3]
end

for a = 1, idea_count do
	io.write("\nMake a game with the genres:\n")
	for b = 1, genre_count do
		io.write(genre_list[math.random(1, #genre_list)]..", ")
	end
	io.write("\n\nAnd the themes:\n")	
	for b = 1, theme_count do
		io.write(theme_list[math.random(1, #theme_list)]..", ")
	end
	io.write("\n\n--------------------\n\n")
end
