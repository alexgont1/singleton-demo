#create some logger
class Logger
	def initialize
		@F = File.open 'log.txt', 'a'
	end

	#class method
	def self.say_something
		puts 'Hi!'
	end

	#instance method
	def log_something wat
		@F.puts wat
	end
end

Logger.say_something

logger = Logger.new
logger.log_something 'hey!'