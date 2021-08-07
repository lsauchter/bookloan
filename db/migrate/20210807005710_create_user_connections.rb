class CreateUserConnections < ActiveRecord::Migration[6.0]
  def change
    create_table :user_connections do |t|

      t.timestamps
    end
  end
end
