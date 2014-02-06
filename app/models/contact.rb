class Contact < ActiveRecord::Base
  validates :email, presence: true,
                    uniqueness: true

  validates :first_name, presence: true
  validates :last_name, presence: true

  def full_name
    first_name = self.first_name
    last_name  = self.last_name
    first_name + " " + last_name
  end
end
