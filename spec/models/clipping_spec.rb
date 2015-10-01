require_relative '../rails_helper'

describe Clipping do
  it 'has a valid factory' do
    expect(build(:clipping)).to be_valid
  end

  it 'is invalid without a title' do
    expect(build(:clipping, title: nil)).to_not be_valid
  end

end
