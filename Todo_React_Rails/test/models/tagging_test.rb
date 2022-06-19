# == Schema Information
#
# Table name: taggings
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  tag_id     :integer          not null
#  todo_id    :integer          not null
#
# Indexes
#
#  index_taggings_on_tag_id   (tag_id)
#  index_taggings_on_todo_id  (todo_id)
#
require 'test_helper'

class TaggingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
