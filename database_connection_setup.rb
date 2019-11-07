# frozen_string_literal: true

require './lib/database_connection'

if ENV['RACK_ENV'] == 'test'
  DatabaseConnection.setup(dbname: 'makersbnb_test')
else
  DatabaseConnection.setup(dbname: 'makersbnb')
end
