# -*- encoding : utf-8 -*-
class String

  # # Generates next numeric value from this string.
  # def next_number
  #   index = self.index(/[0-9]*$/)
  #   if index
  #     pref = self[0, index]
  #     suff = self[index, self.length].to_i + 1
  #     lnth = self.length - pref.length
  #     %Q{#{pref}#{("%0#{lnth}d" % suff)}}
  #   else
  #     "#{self}1"
  #   end
  # end

  # Translation between legacy character sets.

  GEO = 'ÀÁÂÃÄÅÆÈÉÊËÌÍÏÐÑÒÓÔÖ×ØÙÚÛÜÝÞßàáãä'
  KA  = 'აბგდევზთიკლმნოპჟრსტუფქღყშჩცძწჭხჯჰ'
  LAT = 'abgdevzTiklmnopJrstufqRySCcZwWxjh'

  def translate(from, to)
    txt = ""
    self.split('').each do |c|
      indx = from.index(c)
      txt << (indx ? to[indx] : c)
    end
    txt
  end

  # Translates this string into true georgian unicode symbols.
  # Use `type` paramter to specify which type of conversion to use.
  # Possible values for this parameters are `geo` (default), `lat` and `all`.
  def to_ka(type = 'geo')
    case type.to_s
    when 'all' then self.translate("#{GEO}#{LAT}", "#{KA}#{KA}")
    when 'lat' then self.translate(LAT, KA)
    else self.translate(GEO, KA)
    end
  end

  # Translates georgian into GEO encoding.
  def to_geo
    self.translate(KA, GEO)
  end

  # Translates georgian into LAT encoding.
  def to_lat
    self.translate("#{GEO}#{KA}", "#{LAT}#{LAT}")
  end

end
