require 'participant'

describe Participant do
  subject(:sonia) { Participant.new('Sonia', 'sonia@random.com') }
  subject(:'sonia@random.com') { Participant.new('Sonia', 'sonia@random.com')}

  describe '#name' do
    it 'returns the participant name' do
      expect(subject.name).to eq 'Sonia'
    end
  end
  describe '#email' do
    it 'returns the participant email' do
      expect(subject.email).to eq 'sonia@random.com'
    end
  end
end
