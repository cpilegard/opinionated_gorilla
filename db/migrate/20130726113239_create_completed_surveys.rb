class CreateCompletedSurveys < ActiveRecord::Migration
  def change
    create_table :completed_surveys do |t|
      t.references :user
      t.references :survey
      t.timestamps
    end
  end
end
