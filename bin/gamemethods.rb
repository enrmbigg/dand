def say_hello (name,health = 100)
puts ("I'm #{name.capitalize} and my health is #{health} as of #{time}")

end

def time()
	current_time = Time.new
	current_time.strftime("%H:%M and the day is %A")
end

say_hello("arron",60)
say_hello("molvak",125)
say_hello("syntha")
say_hello("lorek",90)


