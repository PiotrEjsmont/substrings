def substrings(string, dictionary)
	string.downcase!
	array = string.split
	hash = Hash.new(0)
	array.each do |sub|
		dictionary.each do |word|
			if sub.match(word)
				hash[word] += 1
			end
		end
	end
	puts hash.sort.to_h
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts
substrings("below", dictionary)
puts
substrings("Howdy partner, sit down! How's it going?", dictionary)