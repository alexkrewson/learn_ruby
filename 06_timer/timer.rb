class Timer

  attr_accessor :seconds

  def initialize
    @seconds = 0
  end
  
  def time_string
    hoursResult = @seconds / 3600
    minutesResult = (@seconds - hoursResult * 3600) / 60
    secondsResult = @seconds - hoursResult * 3600 - minutesResult * 60

    def padder unpadded
      if (unpadded < 10)
        '0' + unpadded.to_s
      else
        unpadded.to_s
      end
    end

    padder(hoursResult) + ':' + padder(minutesResult) + ':' + padder(secondsResult)
    
  end
end