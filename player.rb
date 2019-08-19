class Players

  attr_reader :life
  attr_writer :life
  attr_reader :name

  def initialize(name)
    @life = 3
    @name = name
  end

end