class Biz < ActiveRecord::Base
	validates :needed_visits, presence: true
	attr_accessor :password
	validates :name, :presence => true, :uniqueness => true
	validates :password, :confirmation => true #password_confirmation attr
	validates_length_of :password, :in => 6..20, :on => :create
end
