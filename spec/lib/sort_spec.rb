require_relative "../../lib/sort"

describe Sort do
  describe "#qsort" do
    it { expect(subject.qsort([2, 1])).to eq([1, 2]) }
    it { expect(subject.qsort([3, 2, 1])).to eq([1, 2, 3]) }
    it { expect(subject.qsort([3, 1, 5, 2, 4])).to eq([1, 2, 3, 4, 5]) }
    it { expect(subject.qsort([8, 1, 2, 6, 4, 5, 3, 7])).to eq([1, 2, 3, 4, 5, 6, 7, 8]) }
  end
end