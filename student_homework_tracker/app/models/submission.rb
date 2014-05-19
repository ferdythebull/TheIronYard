class Submission < ActiveRecord::Base
  validates :title, presence: true
  belongs_to :assignment
  has_many :comments, as: :commentable, :dependent => :destroy
  has_many :links
  belongs_to :user
  accepts_nested_attributes_for :links, allow_destroy: true

  include Workflow
  workflow do
    state :new do
      event :reviewing, transitions_to: :reviewing
    end

    state :reviewing do
      event :complete, transitions_to: :complete
      event :incomplete, transitions_to: :incomplete
    end

    state :incomplete do
      event :reviewing, transitions_to: :reviewing
      event :re_review, transitions_to: :reviewing
      event :complete, transitions_to: :complete
    end

    state :complete    
  end
end
