#Create a dictionary of words to seearch
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#Prompt for an input String to search the dictionary words for
puts "Please enter a word or phrase to search:"
user_phrase = gets.chomp

def substrings(str, array)
    #Define a new Hash to store the word counts
    word_counter = {}
        #Convert the input String into an Array of words
        str.split(" ").each do |word|
        #For each array element (word) search for an including match in the [array] input
            array.each do |dictionary_word|
                #If there is a matching word in the dictionary, add this to the hash. If there is already an entry, increment the value
                if word.downcase.include?(dictionary_word)
                    word_counter[dictionary_word] == nil ? word_counter[dictionary_word] = 1 : word_counter[dictionary_word] += 1
                end
            end
        end
    #Return the array that contains the dictionary key-value pairs based on the input String
    word_counter
end

# Run a method that takes the user String and searches the defined dictionary
p substrings(user_phrase, dictionary)