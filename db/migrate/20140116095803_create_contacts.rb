class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :company
      t.string :message
      t.string :twitter
      t.string :website

      t.timestamps
    end
  end
end
