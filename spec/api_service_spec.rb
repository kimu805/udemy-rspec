require_relative "../api_service"

RSpec.describe ApiService do
  describe "#fetch_photos" do
    it "写真データを取得できる" do
      service = ApiService.new
      photos = service.fetch_photos
      expect(photos).to be_an(Array)
      expect(photos.first).to include("id", "title", "url")
    end
  end
end