require 'participant'

describe Participant do
  subject(:sonia) { Participant.new('Sonia') }

  describe '#name' do
    it 'returns the name' do
      expect(sonia.name).to eq 'Sonia'
    end
  end
end
