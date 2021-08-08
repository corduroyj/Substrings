def substrings(word, array)
result = Hash.new(0)

    array.each do |arrWord|
        # scans each word for a full inclusion of arrWord, which then makes an array of the inclusions,
        # which the #length call measures the amount of matches
        numMatches = word.scan(arrWord).length
        # adds this number of matches to the result has UNLESS there are no matches
        result[arrWord] = numMatches unless numMatches == 0
    end
    return result
end

#puts "Howdy partner, lets look for a substring in the dictionary!"
#print "Enter your substring: "
#string = gets.chomp

# define dictionary
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

string = "below"
puts "String is: #{string}"

puts substrings(string, dictionary)