class Tagging < ApplicationRecord
    belongs_to :todo, class_name: "todo", foreign_key: "todo_id"
    belongs_to :tag, class_name: "tag", foreign_key: "tag_id"
end
