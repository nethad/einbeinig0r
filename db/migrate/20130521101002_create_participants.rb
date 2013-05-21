class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :name
      t.string :email
      t.integer :born_in_year
      t.string :topic_keywords
      t.text :topic_description
      t.string :skype_user
      t.string :gmail_address
      t.string :sip_address
      t.string :phone_number

      t.timestamps
    end
  end
end
