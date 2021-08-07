# frozen_string_literal: true

class Library < ApplicationRecord
  validates :name, presence: true

  belongs_to :user
  has_many :books, dependent: :destroy
  has_many :borrowed_books, class_name: 'Book', foreign_key: 'loaned_library'
end
