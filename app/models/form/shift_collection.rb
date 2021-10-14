class Form::ShiftCollection < Form::Base

  FORM_COUNT = 30 #後で修正する
  attr_accessor :shifts

  def initialize(attributes ={})
    super attributes
    self.shifts = FORM_COUNT.times.map { Shift.new() } unless self.shifts.present?
  end

  def shifts_attributes=(attributes)
    self.shifts = attributes.map { |_, v| Shift.new(v)}
  end

  def save
    Shift.transaction do
      self.shifts.map(&:save!)
    end
      return true
    rescue => e
      return false
  end
end