require "./data_mapper_setup.rb"

class Participant
  include DataMapper::Resource # This is the data mapper module


  belongs_to :user

  property :id, Serial # An auto-increment integer key
  property :name, String
  property :number, Integer
  property :receiver, String

end
