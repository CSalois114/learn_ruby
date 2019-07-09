class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    
    hour = @seconds / 3600    #seconds in hour
    hour_string = padded(hour).to

    minute = (@seconds - (hour * 3600)) / 60
    minute_string = padded(minute)

    second = (@seconds - (hour * 3600 + minute * 60)) 

    second_string = padded(second)

    hour_string + ':' + minute_string + ':' + second_string

  end
 
  def padded(x)
    if (x >= 0) && (x < 10)
      x = "0" + x.to_s
    end
    x.to_s
  end

   

end
