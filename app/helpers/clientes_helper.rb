module ClientesHelper
  def format_brazilian_phone(phone)
    digits = phone.to_s.gsub(/\D/, "")
    return phone if digits.length != 11

    "(#{digits[0..1]}) #{digits[2..6]}-#{digits[7..10]}"
  end

  def format_cpf(cpf)
    digits = cpf.to_s.gsub(/\D/, "")
    return cpf if digits.length != 11

    "#{digits[0..2]}.#{digits[3..5]}.#{digits[6..8]}-#{digits[9..10]}"
  end

  def format_cep(cep)
    digits = cep.to_s.gsub(/\D/, "")
    return cep if digits.length != 8

    "#{digits[0..4]}-#{digits[5..7]}"
  end
end
