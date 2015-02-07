RSpec.configure do |config|

	#empty the database before each test tile
	config.before(:suite) do
		DatabaseCleaner.strategy = :truncation
	end

	config.before(:each) do
		DatabaseCleaner.start
	end

	config.after(:each) do
		DatabaseCleaner.clean
	end

end
