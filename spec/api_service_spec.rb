require_relative "../api_service"

RSpec.describe ApiService do
  describe "#fetch_photos" do
    let(:photos_response) do
      [
        {
          id: 1,
          title: "写真１",
          url: "https://example.com/photo1.jpg"
        }
      ].to_json
    end

    before do
      allow(Net::HTTP).to receive(:get).and_return(photos_response)
    end

    it "写真データを取得できる" do
      service = ApiService.new
      photos = service.fetch_photos

      expect(photos).to be_an(Array)
      expect(photos.first).to include("id", "title", "url")
    end
  end
end