class Timer
  #write your code here
  def initialize(seconds=0)
    @seconds = seconds
  end

  def seconds
    @seconds
  end

  def seconds=(new_seconds)
    @seconds =(new_seconds)
  end

  def time_string
    hours = @seconds/3600.floor
    minutes = (@seconds - hours*3600)/60.floor
    seconds = @seconds - (hours*3600+minutes*60)

    hours = "0" + hours.to_s if hours < 10
    minutes = "0" + minutes.to_s if minutes < 10
    seconds = "0" + seconds.to_s if seconds < 10

    return hours.to_s + ":" + minutes.to_s + ":" + seconds.to_s
  end
end
