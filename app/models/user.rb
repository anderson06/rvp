class User < ActiveRecord::Base
  attr_accessible :account, :login, :name, :password, :card_number

  before_save :create_card_number

  private

  	def create_card_number
  		self.card_number = "#{rand(99999)}"
  	end
end
