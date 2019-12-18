require 'sms'

describe SMS do
  it 'can respond to deliver' do
    sms = SMS.new
    expect(sms).to respond_to :deliver
  end
end
