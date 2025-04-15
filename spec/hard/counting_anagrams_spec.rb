# frozen_string_literal: true

require 'hard/counting_anagrams'
describe CountingAnagrams do
  let(:ca) { described_class.new }

  describe 'counting_anagrams' do
    it "returns 2 for 'cars are very cool so are arcs and my os'" do
      expect(ca.counting_anagrams('cars are very cool so are arcs and my os')).to eq(2)
    end

    it 'returns 0 for empty string' do
      expect(ca.counting_anagrams('')).to eq(0)
    end

    it "returns 3 for 'cars arcs sarc rasc'" do
      expect(ca.counting_anagrams('cars arcs sarc rasc')).to eq(3)
    end
  end
end
