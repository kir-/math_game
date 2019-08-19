class Questions

  attr_reader :x
  attr_reader :y

  def initialize()
    @x = rand 1..20
    @y = rand 1..20
  end

  def question(player)
    puts "#{player}: What does #{x} plus #{y} equal?"
    answer = gets.chomp.to_i
    if answer==x+y
      puts "YES! you are correct."
      0
    else
      puts "Seriously? No!"
      -1
    end
  end
end