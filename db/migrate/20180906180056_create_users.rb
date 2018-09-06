class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :job_title
      t.string :type_of
      t.string :location
      t.text :bio
      t.string :email
      t.string :password_digest
      t.timestamps
    end
  end
end
