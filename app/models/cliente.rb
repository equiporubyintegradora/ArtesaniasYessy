class Cliente < ActiveRecord::Base
  belongs_to :paise
  belongs_to :estado
end
