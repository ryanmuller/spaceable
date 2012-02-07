class SpaceableMigration < ActiveRecord::Migration
  def self.up
    create_table :memories do |t|
      t.references :learner, :polymorphic => true
      t.references :component, :polymorphic => true

      t.decimal :ease
      t.integer :interval
      t.integer :views
      t.integer :streak
      t.datetime :last_viewed
      t.datetime :due

      t.timestamps
    end

    add_index :memories, :learner_id
    add_index :memories, :component_id
    add_index :memories, [:learner_id, :component_id], :unique => true

    create_table :memory_ratings do |t|
      t.references :memory
      t.integer :quality

      t.timestamps
    end

    add_index :memory_ratings, :memory_id
  end

  def self.down
    drop_table :memories
    drop_table :memory_ratings
  end
end
