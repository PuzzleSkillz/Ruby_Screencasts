def hello_world(family_name="", first_name="")
  puts "Hello world"
  if family_name != "" && first_name != ""
    puts "My name is " + first_name + " " + family_name
  end
end

hello_world
hello_world("Bond", "James")
hello_world("Bond", "Jane")