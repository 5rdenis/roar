class AddSubsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :subs, :text
  end
end
