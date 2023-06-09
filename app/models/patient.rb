class Patient < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :full_name, presence: true
  validates :date_of_birth, presence: true
  validates :state, presence: true

  has_one :order, dependent: :destroy
  has_many :products, through: :orders, dependent: :destroy

  def service_offered?
    State.find_by(full_name:"#{self.state}").service_offered
  end

  def patient_age
    ac = AgeCalculator.new(self.date_of_birth)
    ac.age
  end

  def old_enough?
    state_minimum_age = State.find_by(full_name:"#{self.state}").minimum_age
    patient_age >= state_minimum_age
  end
end
