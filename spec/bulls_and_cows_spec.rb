require 'bulls_and_cows'

RSpec.describe 'BullsAndCows' do
  describe '#guess' do
    test_cases = [
      ['1234', '5678', ''],
      ['1234', '1234', '++++'],
      ['1234', '1567', '+'],
      ['1234', '5167', '-'],
      ['1234', '1526', '+-'],
      ['1234', '1436', '++-'],
      ['1234', '4321', '----'],
      ['1234', '1243', '++--']
    ]

    test_cases.each do |secret, guess, result|
      it "returns #{result} for #{guess} when secret is #{secret}" do
        expect(BullsAndCows.new(secret).guess(guess)).to eq(result)
      end
    end
  end
end
