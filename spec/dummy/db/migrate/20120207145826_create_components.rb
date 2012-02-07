class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :name

      t.timestamps
    end
  end
end
