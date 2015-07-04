class CreateJokes < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
      t.column :question, :string
      t.column :punchline, :string
      t.column :category_id, :integer

      t.timestamps
    end
  end
end
