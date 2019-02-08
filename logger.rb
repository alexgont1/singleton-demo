class Logger
	def initialize
		@F = File.open 'log.txt', 'a'
	end

	@@x = Logger.new

	def self.instance
		@@x
	end

	#instance method
	def log_something wat
		@F.puts wat
	end

	private_class_method :new
end