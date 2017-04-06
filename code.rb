movies = [['Alfonso Cuaron', 'Gravity'], ['Spike Jonze', 'Her'], ['Martin Scorsese', 'The Wolf of Wall Street']]

movies_hash = Hash[*movies] #Splat operator. DON'T USE FOR LARGE DATASETS.

#alternatively can use

movies_hash = Hash[movies.each_slice(1).to_a] #Will essentially 'slice' the array in two for each value, creating a hash.

#Both of these don't output the right hash, because of the way it's paired... Let's see... OH.

movies.to_h

#... Duh.

# Ouputs {"Alfonso Cuaron"=>"Gravity", "Spike Jonze"=>"Her", "Martin Scorsese"=>"The Wolf of Wall Street"}

num = [1, 12, 144, 1728, 20736, 248832, 2985984, 35831808] #Let's make a big number!

def bignum(num)
  final = 1
  num.each { |i| final *= i }
  final
end

#Takes each value of the array, stores it in the variable 'i', multiplies it by 1 to start, then by each successive number in the array.
#At least, that's what I'm trying to do. LET'S SEE.

#output = 1648446623609512543951043690496

#Playing cards!

numbers = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
suits = ['spades', 'hearts', 'diamonds', 'clubs']

#COMBINE the arrays. Which is different from merging.

#Can... Each + shovel onto the array?

def cards
  suits.each { |i| numbers << i}
end

#No, this just throws each suit onto the numbers array.

suits.each do |suit| #iterates the suits array 4 times (once for each suit)
  numbers.each do |number| #creates a 'nested array' by running 'each' inside of the previous loop.
    cards << [suit, number] #takes the loops and smushes them together.
  end
end

#Alternatively, use .product!

['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'].product(['spades', 'hearts', 'diamonds', 'clubs'])

#WOO. Deck of cards.

#... Writing comments is important. Not my comments, though. They are not very helpful.
