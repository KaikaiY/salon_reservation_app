class AddUserIdToReservations < ActiveRecord::Migration[6.1]
  def change
    add_reference :reservations, :user, foreign_key: true, null: true
  end
end
