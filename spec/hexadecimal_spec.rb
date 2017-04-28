require_relative './spec_helper'

describe "#decimal_to_hexadecimal" do
  it "returns correct hexadecimal if given a positive integer" do
    expect(decimal_to_hexadecimal(3)).to eq('3')
    expect(decimal_to_hexadecimal(11)).to eq('B')
    expect(decimal_to_hexadecimal(25)).to eq('19')
    expect(decimal_to_hexadecimal(651)).to eq('28B')
    expect(decimal_to_hexadecimal(3980)).to eq('F8C')
  end

  it "returns an alert if given a negative integer" do
    expect(decimal_to_hexadecimal(-3)).to eq('This method only accepts positive integers')
  end

  it "returns an alert if given non-numeric characters" do
    expect(decimal_to_hexadecimal("hello")).to eq('This method only accepts positive integers')
  end

end

describe "#hexadecimal_to_decimal" do
  it "returns correct decimal if given a hexadecimal number" do
    expect(hexadecimal_to_decimal('4')).to eq(4)
    expect(hexadecimal_to_decimal('7B')).to eq(123)
    expect(hexadecimal_to_decimal('A')).to eq(10)
    expect(hexadecimal_to_decimal('108B')).to eq(4235)
  end

  it "returns an alert if given any characters are not from 0-9 or A-F" do
    expect(hexadecimal_to_decimal("h10")).to eq("This method only accepts hexadecimal")
  end

end
