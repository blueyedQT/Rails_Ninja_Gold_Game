class RpgController < ApplicationController
	@@gold = 0
	def index
		@gold = @@gold
	end
end
