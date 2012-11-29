class Taxon < ActiveRecord::Base
  attr_accessible :description, :name, :parent_id, :permalink
  acts_as_tree

  scope :taxonomies, lambda{where("parent_id IS NULL")}
  scope :ordered, lambda{order(:created_at)}
end
