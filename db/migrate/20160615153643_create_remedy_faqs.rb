class CreateRemedyFaqs < ActiveRecord::Migration
  def change
    create_table :remedy_faqs do |t|
      t.string :title, null: false, index: true
      t.text :body, null: false
      t.boolean :is_important, default: false, index: true
      t.boolean :is_active, default: false, index: true
      t.timestamps null: false
    end
  end
end
