# Write a pizza class
#
# - Initialize a pizza with a list of toppings.
#
# Behaviours =
#
# bake
# cut
#   - maximum of 3 cuts.
#   (DON'T CUT AN UNCOOKED PIZZA.)
#
# eat
# - REMEMBER TO CUT PIZZA BEFORE EATING.
#
# - what states will you need?

class Pizza

  attr_accessor :pepperoni, :mushrooms, :onions, :pineapple,

  def initialize
    @pepperoni == false
    @mushrooms == false
    @onions == false
    @pineapple == false #EXTRA FALSE.
  end

  def toppings
    puts "What toppings you want, jabroni?"
      gets.to_s
      toppings_list == gets
    if toppings_list == 'pepperoni'
      then
      @pepperoni == true
    if toppings_list == 'mushrooms'
      then
      @mushrooms == true
    if toppings_list == 'onions'
      then
      @onions == true
    if toppings_list == 'pineapple'
      then
      puts "That's disgusting, get outta here with that nonsense."
    else
      puts "I don't understand your language."
    end
  end
  end
  end
  end
end
  def bake

  end

  def cut

  end

  def eat

  end
end

### THE ACTUAL SOLUTION

class Pizza

  def initialize
    # @toppings = toppings
    @cooked = false
    @cuts_remaining = 0
    @slices = 0
  end

  def bake
    @cooked = true
    @slices = 1
    @cuts_remaining = 3
  end

  def cut
    unless @cooked
      puts "I can't cook that, Dave. (IT'S RAAAAAAW.)"
      return
    end
    #CUTS GO HERE.
    if @cuts_remaining == 3
      @slices += 1
      @cuts_remaining -= 1
    elsif @cuts_remaining == 2 || @slices == 1
      @slices += 2
      @cuts_remaining -= 1
    elsif @cuts_remaining == 0
      puts "You can't cut that no more!"
    return
    end
  end


  def eat
    unless @cooked
      puts "You can't eat that, Dave. (IT'S RAAAAAAW.)"
      return
    end
    if @slices > 0
      @slices -= 1
    else
      puts "You can't eat that, Dave. (THERE'S NOTHING LEFT.)"
      return
    end
end

####

class Pizzaplace

  attr_accessor :is_open, :inventory

  def initialize
    @is_open = false
    @inventory = 5
  end

  def order
    if @is_open == false
      puts "We ain't open yet! Go home!"
      return
    elsif @inventory > 0
      @inventory -= 1
      p = Pizza.new
      p.bake
      3.times(p.cut)
      return p
    else
      puts "We need more ingredients! Better restock, jabroni!"
    end
  end

  def open
    if @is_open == true
      puts "We're already open, jabroni!"
    return
    else
      @is_open = true
    end
  end

  def close
    unless @is_open == true
      puts "We're closed already!"
    return
    end
    @is_open = false
  end

  def restock
    if @is_open == true
      puts "You gotta close shop first!"
    return
    else
      @inventory = 5
    end
end
