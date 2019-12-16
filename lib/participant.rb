require_relative '../data_mapper_setup'

class Participant
  include DataMapper::Resource # This is the data mapper module

# Creat a Participants table and columns are listed below.
  property :id, Serial # An auto-increment integer key
  property :name, String
  property :email, String
end
