class ResendRequestOnSubscribe < ApplicationRecord
  belongs_to :user
  belongs_to :resend_request
end
