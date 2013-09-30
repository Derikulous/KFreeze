class User < ActiveRecord::Base
  has_secure_password
  validates :user_name, presence: :true, length: { minimum: 3, maximum: 25 }
  validates_format_of :email, uniqueness: true,
  with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create, message: "Must be a valid email address"

  def email=(value)
    value = value.strip.downcase
    write_attribute :email, value
  end

  def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end
end
