class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :content

      t.timestamps
    end
  end
end
