# frozen_string_literal: true

require 'hard/step_walking'

# An integer parameter contains a value between 1 and 15 that represents the
# number of stairs to be climbed. Stairs can be climbed by taking either 1 step
# or 2 steps, and these can be combined in any order. For example, 3 steps can
# can be climbed as follows: (1, 1, 1) or (2, 1) or (1, 2). For 3 steps there
# are 3 different ways to climb them. Return the number of possible combinations
# to climb the steps.

describe StepWalking do
  let(:sw) { described_class.new }

  describe 'step_walking' do
    it 'returns 5 for 4' do
      expect(sw.step_walking(4)).to eq(5)
    end

    it 'returns 8 for 5' do
      expect(sw.step_walking(5)).to eq(8)
    end

    it 'returns 13 for 6' do
      expect(sw.step_walking(6)).to eq(13)
    end

    it 'returns 21 for 7' do
      expect(sw.step_walking(7)).to eq(21)
    end

    it 'returns 34 for 8' do
      expect(sw.step_walking(8)).to eq(34)
    end

    it 'returns 55 for 9' do
      expect(sw.step_walking(9)).to eq(55)
    end

    it 'returns 377 for 13' do
      expect(sw.step_walking(13)).to eq(377)
    end
  end
end
