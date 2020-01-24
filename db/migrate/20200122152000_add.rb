class Add < ActiveRecord::Migration[6.0]
  
  def up
    add_reference :messages, :user, foreign_key: true
  end

end
