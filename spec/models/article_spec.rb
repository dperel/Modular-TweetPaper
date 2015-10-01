require_relative '../rails_helper'

describe Article do
  it 'has a valid factory' do
    expect(build(:article)).to be_valid
  end

  it 'is invalid without a title' do
    expect(build(:article, title: nil)).to_not be_valid
  end

end
