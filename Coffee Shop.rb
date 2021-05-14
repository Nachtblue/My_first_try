load 'test.rb'


class CoffeeShop

	attr_accessor :nev, :menu, :orders


	def initialize nev, menu={}, orders=[]
		@nev = nev
		@menu = menu
		@orders=orders
	end

	def add_order rendeles
		x=0
		@menu.each do |egyhash|
			if egyhash.values.include?(rendeles)
				x=1
			end
		end
		@orders << rendeles if x==1
		return "Order added!" if x==1
		return "Sorry, this item is unavailable."


	end

	def fulfill_order
		return "The #{@orders.shift} is ready!" if @orders.empty? == false
		return "No orders to fulfill!"
	end

	def cheapest_item
		legolcsobb=1000
		@menu.each do |egyhash|
			if egyhash[:price] < legolcsobb
				legolcsobb = egyhash[:price]
			end
		end
		@menu.each do |egyhash|
			return egyhash[:item] if egyhash[:price] ==legolcsobb
			end
	end

	def drinks_only
		italok=[]
		@menu.each do |egyhash|
			if egyhash[:type] == "drink"
				italok << egyhash[:item]
			end
		end
		return italok
	end
end


cs1 = CoffeeShop.new("A Little Spice", [
	{:item => "cinnamon roll", :type => "food", :price => 4.99},
	{:item => "hot chocolate", :type => "drink", :price => 2.99},
	{:item => "lemon tea", :type => "drink", :price => 2.50},
	{:item => "iced coffee", :type => "drink", :price => 3.00},
	{:item => "vanilla chai latte", :type => "drink", :price => 4.00}
])




Test.assert_equals(cs1.add_order("hot cocoa"), "Sorry, this item is unavailable.")
Test.assert_equals(cs1.add_order("cinnamon roll"), "Order added!")
Test.assert_equals(cs1.add_order("lemon tea"), "Order added!")
Test.assert_equals(cs1.add_order("iced coffee"), "Order added!")
Test.assert_equals(cs1.orders, ["cinnamon roll", "lemon tea", "iced coffee"])
Test.assert_equals(cs1.fulfill_order, "The cinnamon roll is ready!")
Test.assert_equals(cs1.fulfill_order, "The lemon tea is ready!")
Test.assert_equals(cs1.fulfill_order, "The iced coffee is ready!")
Test.assert_equals(cs1.orders, [])
Test.assert_equals(cs1.cheapest_item, "lemon tea")
Test.assert_equals(cs1.drinks_only, ["hot chocolate", "lemon tea", "iced coffee", "vanilla chai latte"])


puts
cs2 = CoffeeShop.new("Warm Cuppa", [
	{:item => "turkey english muffin", :type => "food", :price => 7.99},
	{:item => "avocado toast", :type => "food", :price => 5.05},
	{:item => "espresso", :type => "drink", :price => 2.99},
	{:item => "iced caramel macchiato", :type => "drink", :price => 4.50},
	{:item => "chocolate croissant", :type => "food", :price => 3.00},
	{:item => "cortado", :type => "drink", :price => 4.00},
	{:item => "nitro cold brew tester", :type => "drink", :price => 8.00}
])

Test.assert_equals(cs2.add_order("cortado"), "Order added!")
Test.assert_equals(cs2.fulfill_order, "The cortado is ready!")
Test.assert_equals(cs2.fulfill_order, "No orders to fulfill!")
Test.assert_equals(cs2.add_order("avocado toast"), "Order added!")
Test.assert_equals(cs2.orders, ["avocado toast"])
Test.assert_equals(cs2.menu, [
	{:item => "turkey english muffin", :type => "food", :price => 7.99},
	{:item => "avocado toast", :type => "food", :price => 5.05},
	{:item => "espresso", :type => "drink", :price => 2.99},
	{:item => "iced caramel macchiato", :type => "drink", :price => 4.50},
	{:item => "chocolate croissant", :type => "food", :price => 3.00},
	{:item => "cortado", :type => "drink", :price => 4.00},
	{:item => "nitro cold brew tester", :type => "drink", :price => 8.00}
])
Test.assert_equals(cs2.cheapest_item, "espresso")
Test.assert_equals(cs2.drinks_only, ["espresso", "iced caramel macchiato", "cortado", "nitro cold brew tester"])



