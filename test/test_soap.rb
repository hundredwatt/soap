require 'helper'

class TestSoap < Test::Unit::TestCase
  def test_detect_anything_that_looks_profane
    [
      ['SHiT', true],
      ['plain', false],
    ].
    each do |test, result|
      assert(Soap.detect_profanity(test) == result, "Incorrectly detected #{test}")
    end
  end
  def test_n_random_strings_for_detection_frequency
    length = 10
    n = 10000
    (1..n).
      map { ActiveSupport::SecureRandom.base64(length).to_s.gsub('/', '+')[0,length] }.
      select { |i| Soap.detect_profanity(i) }.
      count.tap { |profanities|
        puts "#{profanities} detected in #{n} strings of length #{length}"
      }
  end
end
