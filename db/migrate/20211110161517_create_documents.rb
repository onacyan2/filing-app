class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.string     :company_name,      null: false
      t.string     :company_name_kana, null: false
      t.string     :title,             null: false
      t.references :business_file,     null: false, foreign_key: true 

      t.timestamps
    end
  end
end
