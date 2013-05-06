# -*- encoding : utf-8 -*-

class Integer

  def to_ka
    if self < 0
      "მინუს #{tokenize_int_ge_0(-self)}"
    else
      tokenize_int_ge_0(self)
    end
  end

  private

  def tokenize_int_ge_0(num)
    case num
    when 0 then return 'ნული'
    when 1 then return 'ერთი'
    when 2 then return 'ორი'
    when 3 then return 'სამი'
    when 4 then return 'ოთხი'
    when 5 then return 'ხუთი'
    when 6 then return 'ექვსი'
    when 7 then return 'შვიდი'
    when 8 then return 'რვა'
    when 9 then return 'ცხრა'
    when 10 then return 'ათი'
    when 11 then return 'თერთმეტი'
    when 12 then return 'თორმეტი'
    when 13 then return 'ცამეტი'
    when 14 then return 'თოთხმეტი'
    when 15 then return 'თხუთმეტი'
    when 16 then return 'თექვსმეტი'
    when 17 then return 'ჩვიდმეტი'
    when 18 then return 'თვრამეტი'
    when 19 then return 'ცხრამეტი'
    when 20 then return 'ოცი'
    when 40 then return 'ორმოცი'
    when 60 then return 'სამოცი'
    when 80 then return 'ოთხმოცი'
    when 100 then return 'ასი'
    when 200 then return 'ორასი'
    when 300 then return 'სამასი'
    when 400 then return 'ოთხასი'
    when 500 then return 'ხუთასი'
    when 600 then return 'ექვსასი'
    when 700 then return 'შვიდასი'
    when 800 then return 'რვაასი'
    when 900 then return 'ცხრაასი'
    when 1000 then return 'ათასი'
    when 1000000 then return 'მილიონი'
    when 1000000000 then return 'მილიარდი'
    when 1000000000000 then return 'ტრილიონი'
    #else '???'
    end
    return "ოცდა #{tokenize_int_ge_0(num-20)}" if num > 20 and num < 40
    return "ორმოცდა #{tokenize_int_ge_0(num-40)}" if num > 40 and num < 60
    return "სამოცდა #{tokenize_int_ge_0(num-60)}" if num > 60 and num < 80
    return "ოთხმოცდა #{tokenize_int_ge_0(num-80)}" if num > 80 and num < 100
    return "ას #{tokenize_int_ge_0(num-100)}" if num > 100 and num < 200
    return "ორას #{tokenize_int_ge_0(num-200)}" if num > 200 and num < 300
    return "სამას #{tokenize_int_ge_0(num-300)}" if num > 300 and num < 400
    return "ოთხას #{tokenize_int_ge_0(num-400)}" if num > 400 and num < 500
    return "ხუთას #{tokenize_int_ge_0(num-500)}" if num > 500 and num < 600
    return "ექვსას #{tokenize_int_ge_0(num-600)}" if num > 600 and num < 700
    return "შვიდას #{tokenize_int_ge_0(num-700)}" if num > 700 and num < 800
    return "რვაას #{tokenize_int_ge_0(num-800)}" if num > 800 and num < 900
    return "ცხრაას #{tokenize_int_ge_0(num-900)}" if num > 900 and num < 1000
    return "ათას #{tokenize_int_ge_0(num-1000)}" if num > 1000 and num < 2000
    if num >= 2000 and num <= 999999
      thousands = num/1000
      rest = num - thousands * 1000
      return "#{tokenize_int_ge_0(thousands)} ათას #{tokenize_int_ge_0(rest)}" if rest != 0
      return "#{tokenize_int_ge_0(thousands)} ათასი" if rest == 0
    end
    return "მილიონ #{tokenize_int_ge_0(num-1000000)}" if num > 1000000 and num < 2000000
    if num >= 2000000 and num <= 999999999
      millions = num/1000000
      rest = num - millions * 1000000
      return "#{tokenize_int_ge_0(millions)} მილიონ #{tokenize_int_ge_0(rest)}" if rest != 0
      return "#{tokenize_int_ge_0(millions)} მილიონი" if rest == 0
    end
    return "მილიარდ #{tokenize_int_ge_0(num-1000000000)}" if num > 1000000000 and num < 2000000000
    if num >= 2000000000 and num <= 999999999999
      billions = num/1000000000
      rest = num - billions * 1000000000
      return "#{tokenize_int_ge_0(billions)} მილიარდ #{tokenize_int_ge_0(rest)}" if rest != 0
      return "#{tokenize_int_ge_0(billions)} მილიარდი"
    end
    if num >= 2000000000000 and num <= 999999999999999
      billions = num/1000000000000
      rest = num - billions * 1000000000000
      return "#{tokenize_int_ge_0(billions)} ტრილიონ #{tokenize_int_ge_0(rest)}" if rest != 0
      return "#{tokenize_int_ge_0(billions)} ტრილიონი"
    end
    return num.to_s
  end
end
