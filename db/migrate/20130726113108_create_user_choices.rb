class CreateUserChoices < ActiveRecord::Migration
  def change
    create_table :user_choices do |t|
      t.references :user
      t.references :choice
      t.timestamps
    end
  end
end
