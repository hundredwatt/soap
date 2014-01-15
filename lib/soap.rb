module Soap
  WORDS = File.read(File.expand_path('../words.txt', __FILE__)).split("\n")
  LETTERS = {
    'a' => 'a4',
    'b' => 'b6',
    'c' => 'c',
    'd' => 'd',
    'e' => 'e3',
    'f' => 'f',
    'g' => 'g9',
    'h' => 'h',
    'i' => 'i1l',
    'j' => 'j',
    'k' => 'k',
    'l' => 'i1l',
    'm' => 'm',
    'n' => 'n',
    'o' => 'o0',
    'p' => 'p',
    'q' => 'q',
    'r' => 'r',
    's' => 's',
    't' => 't1',
    'u' => 'u',
    'v' => 'v',
    'w' => 'w',
    'x' => 'x',
    'y' => 'y',
    'z' => 'z',
  }
  CHAR_CLASSES = LETTERS.inject({}) { |acc,(letter,set_string)| acc[letter] = '['+set_string+']'; acc }
  PATTERN = %r{#{WORDS.map {|word| word.split('').map{|letter|CHAR_CLASSES[letter]}.join('') }.join('|')}}
  def self.detect_profanity(test_string)
    not test_string.downcase.match(PATTERN).nil?
  end
end
