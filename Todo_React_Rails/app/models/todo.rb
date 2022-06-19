class Todo < ApplicationRecord

    validates :title, :body, presence : true
    validates :done, inclusion: {in : [true,false]}

    belongs_to :user, class_name: "user", foreign_key: "user_id"
    
    has_many :steps, class_name: "steps", foreign_key: "step_id"
    has_many :taggings
    has_many :tags, through: :taggings, source: :tag

    def tag_names =(tag_names)
        self.tags = tag_names.map do |tag_name|
            Tag.find_or_create_by(name:tag_name)
        end
    end

end
