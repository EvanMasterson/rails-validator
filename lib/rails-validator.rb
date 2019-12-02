class RailsValidator
  # Returns true or false based on the input compared to the regular expression defined
  # Combined with checking that the size of the file is less than defined
  def self.validate_file(name, size)
    matches = File.extname(name).match?(/\bjpg\b|\bjpeg\b|\bgif\b|\bpng\b|\bmp4\b|\bmov\b|\bpdf\b|\bdoc\b|\bxls\b|\bdocx\b|\bppt\b/)
    file_size = size < 134217728
    return matches && file_size
  end

  # Returns true or false based on the input compared to the regular expression defined
  def self.validate_email(email)
    return email.match?(/\A(?:[a-z0-9!$%&'*+\/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+\/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])\z/)
  end

  # Returns true or false based on the input compared to the input matches the regular expression defined
  def self.validate_password(password)
    return password.match?(/\A(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[\W]).{8,}\z/)
  end
end