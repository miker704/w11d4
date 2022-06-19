# == Schema Information
#
# Table name: steps
#
#  id         :bigint           not null, primary key
#  body       :string
#  done       :boolean
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  todo_id    :integer
#
class Step < ApplicationRecord
    validates :title, presence: true
    validates :done , inclusion: {in: [true,false]}

    after_initialize {self.done = false if self.done.nil?}
    belongs_to :todo
    has_one :user,
    through: :todo,
    source: :user
    
end
