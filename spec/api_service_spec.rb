require_relative "../api_service"

RSpec.describe ApiService do
  describe "#fetch_photos" do
    context "正常系" do
      let(:photos_response) do
        [
          {
            id: 1,
            title: "写真1",
            url: "https://example.com/photo1.jpg"
          }
        ].to_json
      end
  
      before do
        allow(Net::HTTP).to receive(:get).and_return(photos_response)
      end
  
      it "写真データを取得できる" do
        api_service = ApiService.new
        photos = api_service.fetch_photos
        expect(photos).to be_an(Array)
        expect(photos.first).to include("id", "title", "url")
      end
    end

    context "エラー系" do
      before do
        allow(Net::HTTP).to receive(:get).and_raise(SocketError)
      end

      it "ネットワークエラー地には例外が発生する" do
        service = ApiService.new
        expect { service.fetch_photos }.to raise_error(SocketError)
      end
    end


  end
end