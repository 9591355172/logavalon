class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  petergate(roles: [:admin, :editor, :manager], multiple: false) 
  
  
  validates :name, :presence => true
  validates :department_id, :presence => true,
     :inclusion  => { :in => [ 1, 2,3 ],
     :message    => "%{value} is not a valid number" }


  has_many :tasks
  belongs_to :department

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
