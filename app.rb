#create some logger
class Logger
	def initialize
		@F = File.open 'log.txt', 'a'
	end

	@@x = nil

	def self.instance
		if @@x == nil
			@@x = Logger.new
		end

		@@x
	end

	#class method
	def self.say_something
		puts 'Hi!'
	end

	#instance method
	def log_something wat
		@F.puts wat
	end

	#block 'new' for class (outside)
	private_class_method :new
end

Logger.say_something
Logger.instance.log_something 'test1'
Logger.instance.log_something 'test2'

#doesn't work anymore
# logger = Logger.new
# logger.log_something 'hey!'