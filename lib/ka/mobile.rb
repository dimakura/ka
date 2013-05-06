# -*- encoding : utf-8 -*-
module KA

  # Compacts mobile number, throwing out all non-digit characters.
  def compact_mobile(mob)
    mob.scan(/[0-9]/).join('') if mob
  end

  # Correct mobiles are those which are 9 digits after compaction and start with the digit '5'.
  def correct_mobile?(mob)
    compacted = compact_mobile(mob)
    (not not (compacted =~ /^[0-9]{9}$/)) and (compacted[0] == '5')
  end

  # Formats mobile number.
  #
  # The default implementation is format mobile as `(XXX)XXX-XXX`, where `X` denotes a digit.
  #
  # You can specify the different format using formatting options:
  #
  # ```
  # mob = format_mobile('595335514', operator_pre: '[', operator_suf: ']', by: 2, separator: ' ')
  # # => [595]33 55 14
  # ```
  def format_mobile(mob, h = {})
    operator_pre = h[:operator_pre] || h['operator_pre'] || '('
    operator_suf = h[:operator_suf] || h['operator_suf'] || ')'
    by = h[:by] || h['by'] || 3
    separator = h[:separator] || h['separator'] || '-'
    mob = compact_mobile(mob)
    operator = mob[0..2]
    digits = mob[3..8].scan(/.{1,#{by}}/)
    [operator_pre, operator, operator_suf, digits.join(separator)].join('')
    #"(#{operator})#{mob[3..5]}-#{mob[6..8]}"
  end

  module_function :compact_mobile
  module_function :correct_mobile?
  module_function :format_mobile

end
