class CreateResendRequestOnSubscribes < ActiveRecord::Migration[5.1]
  def change
    create_table :resend_request_on_subscribes do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :resend_request, foreign_key: true

      t.timestamps
    end
  end
end
