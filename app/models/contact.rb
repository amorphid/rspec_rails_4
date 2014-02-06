class Contact < ActiveRecord::Base
  validates :email, presence: true
  validates :first_name, presence: true
end
