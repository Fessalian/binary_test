class Recipe
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title,           type: String
  field :description,     type: String
  field :parent_id,       type: String

  index({ created_at: 1 })

  validates_presence_of :title, :description
  validates :title, length: { in: 5..100 }
  validates :description, length: { in: 5..500 }

  default_scope -> { order(created_at: "desc") }
end
