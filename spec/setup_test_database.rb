require 'pg'

def setup_test_database_users
  p 'putiing the DB in DeadBeat.....'

  connection = PG.connect(dbname: 'makersbnb_test')

  connection.exec("TRUNCATE users, listings");
end
