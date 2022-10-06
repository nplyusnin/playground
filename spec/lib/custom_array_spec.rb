require "spec_helper"
require_relative "../../lib/custom_array.rb"

describe CustomArray do
  describe "#min" do
    it { expect(CustomArray.min([1, 2, 3])).to eq(1) }
    it { expect(CustomArray.min([5, 9, 241, 2, 8])).to eq(2) }
    it { expect(CustomArray.min([549, 284])).to eq(284) }
  end
end

