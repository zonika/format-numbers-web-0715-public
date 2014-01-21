require 'spec_helper'

describe 'format_numbers' do 
  it 'does not add a comma on numbers < 3' do
    expect(separate_with_comma(1)).to eq("1")
    expect(separate_with_comma(10)).to eq("10")
    expect(separate_with_comma(100)).to eq("100")
  end

  it 'adds a comma every third digit' do
    expect(separate_with_comma(1000)).to eq("1,000")
    expect(separate_with_comma(10000)).to eq("10,000")
    expect(separate_with_comma(1000000)).to eq("1,000,000")
  end

  it 'adds commas correctly on big numbers' do
    expect(separate_with_comma(100000000000000)).to eq("100,000,000,000,000")
  end
end