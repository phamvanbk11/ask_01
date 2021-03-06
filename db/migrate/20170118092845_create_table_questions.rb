class CreateTableQuestions < ActiveRecord::Migration[5.0]
  def self.up
    create_table :questions do |t|
      t.column :title, :string
      t.column :content, :string
      t.column :user_id, :integer
      t.column :up_vote, :integer, default: 0
      t.column :down_vote, :integer, default: 0
      t.column :views, :integer, default: 0
      t.column :slug, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
