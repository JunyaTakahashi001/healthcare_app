class Form::ActionlogCollection < Form::Base
  FORM_COUNT = 10
  attr_accessor :actionlogs

  def initialize(attributes = {})
    super attributes
    self.actionlogs = FORM_COUNT.times.map { Actionlog.new() } unless self.actionlogs.present?
  end
  
  # 上でsuper attributesとしているので必要
  def actionlogs_attributes=(attributes)
    self.actionlogs = attributes.map { |_, v| Actionlog.new(v) }
  end

  def save
    # 複数件全て保存できた場合のみ実行したいので、transactionを使用する
    Actionlog.transaction do
      self.actionlogs.map(&:save!)
    end
      return true
    rescue => e
      return false
  end
end