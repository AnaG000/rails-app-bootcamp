class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

         PROFILE_TITLE = [
          'Senior Ruby on rails developer',
          'full stack developer',
           'junior ruby on rails developer',
           'senior full stack developer',
           'senior javascript developer',
           'senior frontend developer'
].freeze

def name
  "#{first_name} #{last_name}".strip
end

def address
  "#{city}, #{state}, #{country}, #{pincode}"
end

def self.ransackable_attributes(auth_object = nil)
['country', 'city']
end

def self.ransackable_associations(auth_object = nil)
  []
end

end
