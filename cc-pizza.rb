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
