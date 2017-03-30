class Pizza

  def initialize(toppings)
    @toppings = toppings
    @cooked = false
    @cuts_remaining = 0
    @slices = 0
  end

def bake
  @cooked = true
  @slices = 1
  @cuts_remaining = 3
  return @cooked
end

def cut
  unless @cooked == true
    puts "Error: Can't cut a raw pizza"
    return
  end

  if @cuts_remaining == 3
    @slices += 1
    @cuts_remaining -= 1

  elsif @cuts_remaining == 2 || @cuts_remaining == 1
    @slices += 2
    @cuts_remaining -= 1
  elsif @cuts_remaining == 0
    puts "ERROR: Pizza is too sliced"
    return
  end
  return @slices
end

def eat
  unless @cooked == true
    puts "ERROR: Can't eat raw pizza"
    return
  end

  if @slices > 0
    @slices -= 1
    puts "nom"
  else
    puts "Error: No more pizza"
end
end
end


class Pizzeria

  def initialize
    @open = false
    @supplies = 0

  end

  # def order
  #   unless open == true
  #     puts "Sorry, no orders while we are closed"
  #     return
  #   end
  #
  #   if @pizzas_remaining > 0
  #     @pizzas_remaining -= 1
  #   else
  #     puts "sorry no more pizza"
  #     return
  #   end
  #
  # end

  def order(toppings)
    if @open == true && @supplies > 0
      #make the pizza
      @supplies -= 1
      p = Pizza.new(toppings)
      p.bake
      3.times { p.cut }
      return p
    else
      puts Error: "Can't make pizza"
    end
  end

  def open
    @open = true
  end

  def close
    @open = false
  end

  def restock
    unless @open == false
      puts "cannot restock while open"
      return
    end

    @supplies = 5
    puts "Ready to make pizza again!"
  end

end
