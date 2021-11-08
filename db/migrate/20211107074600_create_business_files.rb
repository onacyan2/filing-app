class CreateBusinessFiles < ActiveRecord::Migration[6.0]
  def change
    create_table :business_files do |t|
      t.string     :file_title, null: false
      t.references :user,       null: false, foreign_key: true 

      t.timestamps
    end
  end
end
