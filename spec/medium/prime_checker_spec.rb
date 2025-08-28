# frozen_string_literal: true

require 'medium/prime_checker'

# Return 1 if any arrangement of a numbers digits would be a prime number.
# Otherwise return 0.

describe PrimeChecker do
  let(:pc) { described_class.new }

  describe 'prime_checker' do
    it 'outputs 1 for 910' do
      expect(pc.prime_checker(910)).to eq(1)
    end

    it 'outputs 1 98' do
      expect(pc.prime_checker(98)).to eq(1)
    end

    it 'outputs 1 for 598' do
      expect(pc.prime_checker(598)).to eq(1)
    end

    it 'outputs 1 for 33' do
      expect(pc.prime_checker(33)).to eq(1)
    end

    it 'outputs 0 for 486' do
      expect(pc.prime_checker(486)).to eq(0)
    end
  end
end
