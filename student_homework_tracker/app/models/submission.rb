class Submission < ActiveRecord::Base
  belongs_to :assignment
  has_many :comments, as: :commentable, :dependent => :destroy
  has_many :links
  belongs_to :user
  accepts_nested_attributes_for :links, allow_destroy: true

  include Workflow
  workflow do
    state :new do
      event :grading, transitions_to: :grading
    end

    state :grading do
      event :complete, transitions_to: :complete
      event :incomplete, transitions_to: :incomplete
    end

    state :incomplete do
      event :grading, transitions_to: :grading
    end

    state :complete    
  end
end
