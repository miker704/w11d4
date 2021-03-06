# == Schema Information
#
# Table name: todos
#
#  id         :bigint           not null, primary key
#  body       :string           not null
#  done       :boolean          not null
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_todos_on_user_id  (user_id)
#
class Todo < ApplicationRecord

    validates :title, :body, presence: true
    validates :done, inclusion: {in: [true,false]}

    belongs_to :user
    
    has_many :steps
    has_many :taggings
    has_many :tags, through: :taggings, source: :tag

    def tag_names=(tag_names)
        self.tags = tag_names.map do |tag_name|
            Tag.find_or_create_by(name:tag_name)
        end
    end

end
