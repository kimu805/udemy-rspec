require "net/http"
require "json"

class ApiService
  def fetch_photos
    uri = URI("https://jsonplaceholder.typicode.com/photos")
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end
end
