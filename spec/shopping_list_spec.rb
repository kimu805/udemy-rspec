require_relative "../shopping_list"

RSpec.describe ShoppingList do
  describe "#items" do
    it "買い物リストにりんごが含まれている" do
      list = ShoppingList.new
      list.add_item("りんご")
      list.add_item("バナナ")
      list.add_item("オレンジ")

      expect(list.items).to include("りんご")

      expect(list.items).not_to include("不動産")
    end

    it "買い物リストに必要な果物が全て含まれている" do
      list = ShoppingList.new
      list.add_item("りんご")
      list.add_item("バナナ")
      list.add_item("オレンジ")

      expect(list.items).to include("りんご", "バナナ", "オレンジ")
    end
  end
end