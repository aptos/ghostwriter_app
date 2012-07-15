class Timecard
  include Mongoid::Document
  field :title, :type => String
  field :supervisor_hours, :type => Integer
  field :worker_hours, :type => Integer
  field :worker_count, :type => Integer
  field :payment, :type => String
  field :paid, :type => String
  field :location, :type => String
  field :job, :type => String
  field :start, :type => String
  field :end, :type => String
  field :color, :type => String
end
