class Contact < ActiveRecord::Base
  validates :name, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
  validates :name, presence: true
  validates :email, presence: true
  validates :comments, presence: true
end
