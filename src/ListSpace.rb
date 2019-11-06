require_relative 'database_connection'

class ListSpace
  attr_reader :name, :cost, :address, :description

   def initialize(name:, cost:, address:, description:)
     @name, @cost, @address, @description  = name, cost, address, description
   end

  def self.all
    result = DatabaseConnection.query('SELECT * FROM listings;')
    result.map do |listing|
      ListSpace.new(name: listing['name'], cost: listing['cost'], address: listing['address'], description: listing['description'])
    end
  end

  def self.create(name:, cost:, address:, description:)
    return false unless is_url?(url)
    result = DatabaseConnection.query("INSERT INTO listings (name, cost, address, description) VALUES('#{name}', '#{cost}', '#{address}', '#{description}') RETURNING name, cost, address, description;")
    ListSpace.new(name: listing['name'], cost: listing['cost'], address: listing['address'], description: listing['description'])
  end

end
