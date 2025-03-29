# frozen_string_literal: true

require 'palindrome'

# If the string is a palindrome return the string 'true', else return the string 'false'.
# Ignore any characters that are not alphabetic. Ignore case.

describe 'palindrome' do
  it "should return the string 'true' if the parameter is a palindrome." do
    expect(palindrome('Anne, I vote more cars race Rome-to-Vienna')).to eq('true')
  end

  it "should return the string 'false' if the parameter is not a palindrome." do
    str = 'If the box contains a diamond, I desire to believe that the box contains a diamond'
    expect(palindrome(str)).to eq('false')
  end

  it "should return the string 'true' if the parameter is a palindrome." do
    expect(palindrome('Noel - sees Leon')).to eq('true')
  end

  it "should return the string 'true' if the parameter is a palindrome." do
    expect(palindrome('A war at Tarawa!')).to eq('true')
  end

  it "should return the string 'true' if the parameter is a palindrome." do
    expect(palindrome('123A67899')).to eq('true')
  end

  it "should return the string 'true' if the parameter is a palindrome." do
    expect(palindrome('')).to eq('true')
  end
end
