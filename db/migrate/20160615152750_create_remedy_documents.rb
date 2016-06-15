class CreateRemedyDocuments < ActiveRecord::Migration
  def change
    create_table :remedy_documents do |t|
      t.string :title, null: false
      t.text :description
      t.string :file, null: false
      t.boolean :is_active, default: false
      t.timestamps null: false
    end
  end
end
