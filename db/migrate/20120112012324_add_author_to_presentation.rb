class AddAuthorToPresentation < ActiveRecord::Migration
  def change
    add_column :presentations, :author, :string
  end
end
