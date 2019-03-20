require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:dessert) { Dessert.new("cake", 4) }
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("cake")
    end
    it "sets a quantity" do
      expect(dessert.quantity).to eq(4)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect(dessert.quantity.is_a?(Integer)).to eq(true)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do 
      expect(dessert.ingredients).to_not include("butter")
      dessert.add_ingredient("butter")
      expect(dessert.ingredients).to include("butter")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do 
      ing_dup = dessert.ingredients.dup 
      dessert.mix
      expect(ing_dup).to_not eq(dessert.ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do 
      prev_quan = dessert.quantity
      dessert.eat 
      expect(dessert.quantity).to_not eq(prev_quan)
    end

    it "raises an error if the amount is greater than the quantity" do 
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do 
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do 
    end
  end
end
