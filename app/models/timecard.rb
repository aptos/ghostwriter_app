class Timecard
  include Mongoid::Document
  field :title, :type => String
  field :supervisor_hours, :type => Integer
  field :worker_hours, :type => Integer
  field :worker_count, :type => Integer
  field :payment, :type => Float, :precision => 8, :scale => 2
  field :paid, :type => Boolean
  field :location, :type => String
  field :job, :type => String
  field :start, :type => String
  field :end, :type => String
  field :color, :type => String
end
