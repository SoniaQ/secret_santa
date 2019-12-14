require 'participant'

describe Participant do
  subject(:sonia) { Participant.new('Sonia') }

  describe '#name' do
    it 'returns the name' do
      exepect(sonia.name).to equal 'Sonia'
    end
  end
end
