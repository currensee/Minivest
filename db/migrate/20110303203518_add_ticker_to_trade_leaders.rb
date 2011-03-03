class AddTickerToTradeLeaders < ActiveRecord::Migration
  def self.up
    add_column :trade_leaders, :ticker, :string
  end

  def self.down
    remove_column :trade_leaders, :ticker
  end
end
