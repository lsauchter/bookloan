# frozen_string_literal: true

class Book < ApplicationRecord
  validates :name, presence: true
  belongs_to :library
  belongs_to :loaned_library, class_name: 'Library'
end
