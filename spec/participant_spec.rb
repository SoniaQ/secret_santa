require 'participant'

describe Participant do
  subject(:sonia) { Participant.new('Sonia') }
  subject(:'sonia@random.com') { Participant.new('sonia@random.com') }

  describe '#name' do
    it 'returns the participant name' do
      expect(sonia.name).to eq 'Sonia'
    end
  describe '#emal' do
    it 'returns the participant email' do
      expect(sonia.email).to eq 'sonia@random.com'
    end
  end
  end
end
