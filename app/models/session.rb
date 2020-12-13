class Session < ApplicationRecord
  has_many :user_sessions
  has_many :users, :through => :user_sessions

  has_many :form_graphs, dependent: :destroy
  has_many :value_graphs, dependent: :destroy
end