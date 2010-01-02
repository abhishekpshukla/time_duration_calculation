# TimeDurationCalculation
# Parse the seconds and it will return the following
# for e.g - 
# parse_seconds(36000)
# return 10:00:00

module TimeDurationCalculation
def parse_seconds(seconds)
    if seconds > 86400
		 return "Sorry Please correct your time."
	else
		seconds  = seconds
		hours   = (seconds/3600.00).to_i
		minutes = hours > 0 ? ((seconds - (hours*60*60))/60.0).to_i : (seconds/60.0).to_i
		sec     = (seconds - (hours*60*60 + minutes * 60))

		if hours > 0
			hours = (hours.eql?(1)) ?  "1:" : hours.to_i.to_s + ":"
		else
			hours = "00:"
		end

		if minutes > 0
			minutes = (minutes.eql?(1)) ?  "1:" : minutes.to_i.to_s + ":"
		else
			minutes = "00:"
		end

		if sec > 0
			sec = (sec.eql?(1)) ?  "1" : sec.to_i.to_s + ""
		else
			sec = "00"
		end

		return hours+minutes+sec
	end

  end
end

