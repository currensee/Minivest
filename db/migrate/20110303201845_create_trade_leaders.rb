class CreateTradeLeaders < ActiveRecord::Migration
  def self.up
    create_table :trade_leaders do |t|
      t.string :first_name
      t.string :last_name
      t.text :bio

      t.timestamps
    end
  end

  def self.down
    drop_table :trade_leaders
  end
end
