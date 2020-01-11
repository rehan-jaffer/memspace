class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
           
  has_many :repetitions
  has_many :cards, through: :repetitions

  def repetitions_due
    Repetition.where("(NOW()::date - last_review::date)::integer > days_till_next").all
  end

  def add_card(card)

    Repetition.create(card: card, 
      user: self,
      last_review: DateTime.now(),
      days_till_next: 0)

  end

end
