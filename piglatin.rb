unmatch = Array.new
match = Array.new
unpro = Array.new

puts "Type a word!"
word = gets.chomp.downcase
word.each_char do |x|


	if x == "a" || x == "e" || x == "i" || x == "o" || x == "u"
		break # after first vowel
		# find a way to store unprocessed char into unpro
		match << x # store matched vowel into match
	else 
		unmatch << x # store not-matched vowel into dmatch
	#else puts "#{word}" + "ay" #for word start with a vowel
	end
end

if word.empty?  # how else can i determine this? in a more ruby-like manner?
	puts ""	
elsif word == "nil"  # this does not  (why?)
	puts "nil"
else 
	unpro = word[unmatch.length, (word.length - unmatch.length)]
    puts "#{unpro}" + "#{unmatch.join}" + "ay"
end

=begin
some
myArray = ['s', 'o', 'm', 'e']

index = myArray[1]
=end

# how do i get the "thing" from position 1 to the end?


