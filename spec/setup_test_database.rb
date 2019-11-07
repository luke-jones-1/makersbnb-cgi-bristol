require 'pg'

def setup_test_database
  p 'putting the DB in DeadBeat.....'

  connection = PG.connect(dbname: 'makersbnb_test')

  connection.exec("TRUNCATE listings;")
end
