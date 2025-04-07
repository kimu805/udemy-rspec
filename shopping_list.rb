class ShoppingList
  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def items
    @items
  end
end