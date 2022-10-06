require_relative "../../lib/sort"

describe Sort do
  %w(sort qsort).each do |method_name|
    describe "##{method_name}" do
      it { expect(subject.send(method_name, [2, 1])).to eq([1, 2]) }
      it { expect(subject.send(method_name, [3, 2, 1])).to eq([1, 2, 3]) }
      it { expect(subject.send(method_name, [3, 1, 5, 2, 4])).to eq([1, 2, 3, 4, 5]) }
      it { expect(subject.send(method_name, [8, 1, 2, 6, 4, 5, 3, 7, 9])).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9]) }
    end
  end
end