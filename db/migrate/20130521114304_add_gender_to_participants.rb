class AddGenderToParticipants < ActiveRecord::Migration
  def change
    add_column :participants, :gender, :string
  end
end
