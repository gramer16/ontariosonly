class ChangeZipcodeTypeInServices < ActiveRecord::Migration
  def change
  	def self.up
    change_column :services, :zipcode, :string
  end
 
  def self.down
    change_column :services, :zipcode, :integer
  end
  end
end
