require 'httparty'

class FakeStoreService
  include HTTParty 
  base_uri 'https://fakestoreapi.com'

  def self.get_products
    response = get('/products')
    if response.success?
      response.parsed_response
    else
      raise "Failed to fetch"
    end
  end
end