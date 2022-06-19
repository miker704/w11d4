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
require 'test_helper'

class StepTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
