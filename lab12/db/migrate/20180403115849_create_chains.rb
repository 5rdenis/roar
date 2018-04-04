class CreateChains < ActiveRecord::Migration[5.1]
  def change
    create_table :chains do |t|
    	t.string :initial
    	t.string :all
      t.string :result
      
      t.timestamps
    end
  end
end
