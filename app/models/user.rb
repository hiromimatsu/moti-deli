class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :articles
       
  validates :name, presence: true, uniqueness: true
  validates :email, uniqueness: {case_sensitive: false}, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i , message:"メールアドレスを正しく入力してください"},presence: true
  validates :password, length: {minimum: 8},presence: true
end