require "./data_mapper_setup"
require 'bcrypt'

class User
  include DataMapper::Resource
  attr_reader :user
  attr_reader :password
  attr_accessor :password_confirmation

  property :id, Serial
  property :name, String
  property :number, Integer
  property :password, String
  property :password_confirmation, String
  property :password_digest, Text

  # validates_uniqueness_of :name, :number
  def new
    @user = User.new
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end
end
