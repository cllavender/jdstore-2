class Order < ApplicationRecord
  before_create :generate_token

  has_many   :product_lists
  belongs_to :user

  validates :billing_name, presence: true
  validates :billing_address, presence: true
  validates :shipping_name, presence: true
  validates :shipping_address, presence: true

  include AASM

  aasm do
    state :order_placed, initial:true   
    state :paid
    state :reserved                    # 行程已预定-->shipping
    state :started                     # 行程已开始-->shipped
    state :trip_cancelled              # 行程已取消-->order_cancelled
    state :trip_ended                  # 行程已结束-->good_returned

    event :make_payment, after_commit: :pay! do
      transitions from: :order_placed, to: :paid
    end

    event :reserve do              #预定行程-->ship
      transitions from: :paid, to: :reserved
    end

    event :start do                #开始行程-->deliver
      transitions from: :reserved, to: :started
    end

    event :end_trip do             #结束行程-->return_good
      transitions from: :started, to: :trip_ended
    end

    event :cancel_trip do                     #取消行程-->cancel_order
      transitions from: [:order_placed, :paid, :reserved], to: :trip_cancelled
    end
  end

  def generate_token
    self.token = SecureRandom.uuid
  end

  def set_payment_with!(method)
    self.update_columns(payment_method: method)
  end

  def pay!
    self.update_columns(is_paid: true)
  end

end
