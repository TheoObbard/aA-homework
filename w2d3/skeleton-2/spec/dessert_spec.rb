require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)!
Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("Phil") }
  subject(:cookie) { Dessert.new("cookie", 100, chef)}

  describe "#initialize" do

    it "sets a type" do
      expect(cookie.type).to eq('cookie')
    end

    it "sets a quantity" do
      expect(cookie.quantity).to eq(100)
    end

    it "starts ingredients as an empty array" do
      expect(cookie.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("Ice-cream", "10 gallons") }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(cookie.ingredients).to_not include('chocolate chips')
      cookie.add_ingredient('chocolate chips')
      expect(cookie.ingredients).to include('chocolate chips')
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      cookie.add_ingredient('maple syrup')
      cookie.mix!
      expect(cookie.ingredients).to eq(cookie.ingredients.shuffle)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      cookie.eat(50)
      expect(cookie.quantity).to eq(50)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { cookie.eat(500) }.to raise_error(RuntimeError)
    end
  end

  describe "#serve" do

    it "contains the titleized version of the chef's name" do
      expect(chef).to receive(:titleize)
      cookie.serve
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(cookie)
      cookie.make_more
    end
  end
end
