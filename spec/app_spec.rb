require 'app'

describe 'report' do

  it 'should return a count of "Green" values' do
    expect(report("Green")).to eq "Green: 1"
  end
end
