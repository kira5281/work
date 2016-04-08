class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

         validates :doc_type, inclusion: { in: %w(PASS TI CC CE),
    		message: "%{value} no es un tipo valido" }, on: :update
end
