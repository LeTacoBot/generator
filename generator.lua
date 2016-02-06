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

io.write("The Official Enough Lua Video Game Generator!\n\nNumber of genres?\n")
genre_count = io.read()
io.write("Number of themes?\n")
theme_count = io.read()
io.write("Number of ideas?\n")
idea_count = io.read()

for a = 1, idea_count do
	io.write("\n\nGenres: ")
	for b = 1, genre_count do
		io.write(genre_list[math.random(1, #genre_list)]..", ")
	end
	io.write("\nThemes: ")	
	for b = 1, theme_count do
		io.write(theme_list[math.random(1, #theme_list)]..", ")
	end
end

io.write("\n")
