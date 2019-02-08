#do all using gem 'singleton'
require 'singleton'

class Logger
	include Singleton

	def initialize
		@F = File.open 'log.txt', 'a'
	end

	def log_something wat
		@F.puts wat
	end
end