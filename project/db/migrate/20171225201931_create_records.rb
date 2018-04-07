class CreateRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :records do |t|
      t.text :input
      t.text :output

      t.timestamps
    end
  end
end
