# frozen_string_literal: true

require 'medium/division'

# Find the Greatest Common Factor of two numbers
describe Division do
  let(:di) { described_class.new }

  describe 'division' do
    it 'returns 1 for the numbers 7 and 3' do
      expect(di.division(7, 3)).to eq(1)
    end

    it 'returns 18 for the numbers 36 and 54' do
      expect(di.division(36, 54)).to eq(18)
    end

    it 'returns 4 for the numbers 12 and 16' do
      expect(di.division(12, 16)).to eq(4)
    end

    it 'returns 111 for the numbers 777 and 999' do
      expect(di.division(777, 999)).to eq(111)
    end
  end
end
