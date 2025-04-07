require_relative "../api_service"

RSpec.describe ApiService do
  describe "#fetch_photos" do
    before do
      allow(Net::HTTP).to receive(:get).and_return([
        {
          id: 1,
          title: "写真1",
          url: "https://example.com/photo1.jpg"
        }
      ].to_json)
    end
    
    it "写真データを取得できる" do
      api_service = ApiService.new
      photos = api_service.fetch_photos
      expect(photos).to be_an(Array)
      expect(photos.first).to include("id", "title", "url")
    end

  end
end