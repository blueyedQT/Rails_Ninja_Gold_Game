class RpgController < ApplicationController
	@@time = Time.new
	def index
		# session[:messages] = nil
		# session[:gold] = nil
		if session[:messages] == nil
			session[:messages] = Array.new
			session[:gold] = 0
		end
		@gold = session[:gold]
		@messages = session[:messages].reverse
	end
	def farm
		@rand = rand(10..20)
		@timestamp = @@time.strftime('%Y/%m/%d %H:%M %p')
		@message = "Earned #{@rand} gold from the farm! " + @timestamp
		session[:gold] += @rand
		session[:messages].push(@message)
		redirect_to '/'
	end
end
