class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.belongs_to    :user
      t.string        :name
      t.text          :description
      t.text          :background
      t.integer       :age
      t.text          :place_of_origin
      t.string        :alignment
      t.string        :race
      t.text          :peronality_traits
      t.text          :ideals
      t.text          :bonds
      t.text          :flaws

      t.integer       :experience_points
      t.integer       :total_level, default: 1

      t.integer       :str, default: 8
      t.integer       :dex, default: 8 
      t.integer       :con, default: 8
      t.integer       :int, default: 8
      t.integer       :wis, default: 8
      t.integer       :cha, default: 8
      t.integer       :proficiency
      t.integer       :total_hp
      t.integer       :current_hp
      t.integer       :temporary_hp
      t.integer       :ac
      t.integer       :speed
      t.integer       :initiative
      t.integer       :inspiration

      t.timestamps
    end
  end
end
