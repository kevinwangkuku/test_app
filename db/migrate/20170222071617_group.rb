class Group < ActiveRecord::Migration[5.0]
  def change
    create_table :group do |t|
      t.string :namn
      t.integer :members
    
      t.text :description

      t.timestamps
    end
  end
end
