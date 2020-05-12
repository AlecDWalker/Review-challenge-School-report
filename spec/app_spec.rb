require 'app'

describe 'report' do

  it 'should return a count of "Green" values' do
    expect(report("Green, Green")).to eq "Green: 2"
  end

  it 'should return a count of "Amber" values' do
    expect(report("Amber, Amber, Amber")).to eq "Amber: 3"
  end

  it 'should return a count of "Red" values' do
    expect(report("Red, Red")).to eq "Red: 2"
  end

  it 'should be able to return a count of three different grades' do
    expect(report('Red,Green,Green,Amber')).to eq "Green: 2\nAmber: 1\nRed: 1"
  end

  it 'should not give a line for any 0 values' do
    expect(report('Green, Green, Red')).to eq "Green: 2\nRed: 1"
  end

  it 'should report a count of any undefined values' do
    expect(report('Green, False, Also false, Amber')).to eq "Green: 1\nAmber: 1\nErrors: 2"
  end

end
