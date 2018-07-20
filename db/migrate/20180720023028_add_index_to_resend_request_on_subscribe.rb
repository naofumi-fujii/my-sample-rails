class AddIndexToResendRequestOnSubscribe < ActiveRecord::Migration[5.1]
  def change
    add_index :resend_request_on_subscribes, [:user_id], :unique => true, name: 'resend_request_on_subscribe'
  end
end
