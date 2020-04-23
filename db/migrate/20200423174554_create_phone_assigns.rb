class CreatePhoneAssigns < ActiveRecord::Migration[6.0]
  def change
    create_table :phone_assigns do |t|
      t.integer :phone_no

      t.timestamps
    end
  end
end
