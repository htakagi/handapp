class Player < ActiveRecord::Base
      validates :name, presence: { message: "入力してください"}
end
