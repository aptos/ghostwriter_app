class Expense
  include Mongoid::Document
  field :account, :type => String
  field :amount, :type => Float, :precision => 8, :scale => 2
  field :category, :type => String
  field :date, :type => String
  field :description, :type => String
  field :vendor, :type => String
end
