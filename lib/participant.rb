require 'data_mapper_setup.rb'

class Participant
  include DataMapper::Resource
  attr_reader :name, :email

  def initialize(name, email)
    @name = name
    @email = email
  end

end
