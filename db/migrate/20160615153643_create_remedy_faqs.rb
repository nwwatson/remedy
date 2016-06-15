class CreateRemedyFaqs < ActiveRecord::Migration
  def change
    create_table :remedy_faqs do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.boolean :is_important, default: false
      t.boolean :is_active, default: false
      t.timestamps null: false
    end
  end
end
