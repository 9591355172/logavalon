class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  petergate(roles: [:admin, :editor, :manager], multiple: false) 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  validates :name, :presence => true
  # validates :department_id, :presence => true
  has_many :tasks
  belongs_to :department
end
