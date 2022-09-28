require "spec_helper"

require_relative "../../lib/binary_search.rb"

describe BinarySearch do
  describe "#find" do
    context "value is exists" do
      it { expect(subject.find([1, 2, 3], 1)).to eq(true) }
      it { expect(subject.find([1, 2, 3], 2)).to eq(true) }
      it { expect(subject.find([1, 2, 3], 3)).to eq(true) }
      it { expect(subject.find([1, 2, 3, 4, 5, 6, 7, 8], 2)).to eq(true) }
      it { expect(subject.find([1, 2, 3, 4, 5, 6, 7, 8], 6)).to eq(true) }
    end

    context "value don't exists" do
      it { expect(subject.find([1, 3, 5], 2)).to eq(false) }
      it { expect(subject.find([1, 3, 5], 4)).to eq(false) }
      it { expect(subject.find([1, 3, 9, 21, 99, 125, 127, 138], 2)).to eq(false) }
      it { expect(subject.find([1, 3, 9, 21, 99, 125, 127, 138], 130)).to eq(false) }
    end
  end
end