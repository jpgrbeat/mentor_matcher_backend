class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.integer :mentor_id
      t.integer :mentee_id
      t.timestamps
    end
  end
end
