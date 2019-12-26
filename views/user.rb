
require_relative 'database_connection.rb'

class User

  def self.create(first_name:, last_name:, email:)
    result = DatabaseConnection.query(
      %(INSERT INTO  (first_name, last_name, email)
      VALUES ('#{first_name}', '#{last_name}', '#{email}')
      RETURNING id, first_name, last_name, email;)
    ).first
    User.new(
      id: result['id'],
      first_name: result['first_name'],
      last_name: result['last_name'],
      email: result['email']
    )
  end

  attr_reader :id, :first_name, :last_name, :email

  def initialize(id:, first_name:, last_name:, email:)
    @id = id
    @first_name = first_name
    @last_name = last_name
    @email = email
  end
end
