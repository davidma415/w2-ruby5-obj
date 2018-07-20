class Paperboy
  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
    @quota = 50
  end

  def name
    @name
  end

  def name=(str)
    @name = str
  end

  def experience
    @experience
  end

  def experience=(int)
    @experience = int
  end

  def earnings
    @earnings
  end

  def quota
    @quota
  end

  def quota=(int)
    @quota = int
  end

  def deliver(start_address, end_address)
    delivered = ((end_address - start_address).abs) + 1
    over_quota = delivered - @quota
    @experience += delivered
    if delivered >= @quota
      @earnings += (over_quota*0.5) + (@quota*0.25)
      @quota += (0.5*delivered.to_f)
    elsif delivered < @quota
      @earnings += ((delivered*0.25)-2)
      @quota += (0.5*delivered.to_f)
    end
  end
  def report
    puts "I'm #{@name.capitalize}, I've delivered #{@experience} papers and I've earned $#{@earnings}."
  end
end

bob = Paperboy.new("Bob")
bob.deliver(101, 160)
bob.report
bob.deliver(1, 75)
bob.report
