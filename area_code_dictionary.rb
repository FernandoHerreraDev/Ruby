
dial_book = {
	"newyork" => "212",
	"newbrunswick" => "732",
	"edison" => "908",
	"plainsboro" => "609",
	"sanfrancisco" => "301",
	"miami" => "305",
	"paloalto" => "650",
	"evanston" => "847",
	"orlando" => "407",
	"lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(somehash)
	somehash.each do | keyCity, cityValue |
		puts keyCity
	end
end
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
	somehash.each do | k_city, v_city |
		if k_city == key
			return "The area code for #{ key } is #{ v_city }"
		end
	end
return nil
end
 
# Execution flow
loop do
	puts "Do you want to lookup an area code based on a city name?(Y/N)"
	check_desition = gets.chomp.downcase
	break if check_desition != "y"
	10.times { print "-"  }
	print " Cities "
	10.times { print "-"  }
	puts
	get_city_names(dial_book)
	puts
	puts "Enter your selection"
	citie_selected = gets.chomp.downcase
	puts
	selected = get_area_code(dial_book, citie_selected)
	if selected.nil?
		puts "Your selection is invalid, try again!"
	else
	puts selected
	end
end