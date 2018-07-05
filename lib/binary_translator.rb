class BinaryTranslator

  attr_reader :alpha_to_binary

  def initialize(alpha_to_binary)
    @alpha_to_binary = {
      ""  => "!@{$#%^&*()}",
      " " => "000000",
      "a" => "000001",
      "A" => "000001",
      "b" => "000010",
      "c" => "000011",
      "d" => "000100",
      "e" => "000101",
      "f" => "000110",
      "g" => "000111",
      "G" => "000111",
      "h" => "001000",
      "H" => "001000",
      "i" => "001001",
      "I" => "001001",
      "j" => "001010",
      "k" => "001011",
      "l" => "001100",
      "m" => "001101",
      "n" => "001110",
      "N" => "001110",
      "o" => "001111",
      "p" => "010000",
      "q" => "010001",
      "r" => "010010",
      "R" => "010010",
      "s" => "010011",
      "t" => "010100",
      "T" => "010100",
      "u" => "010101",
      "U" => "010101",
      "v" => "010110",
      "w" => "010111",
      "W" => "010111",
      "x" => "011000",
      "y" => "011001",
      "Z" => "011010",
      "z" => "011010"
    }
    end

    def translate_a(a)
      a_value = @alpha_to_binary["a"]
      translate = @translate_a
      return a_value
    end

    def translate_A(capital_a)
      a_value = @alpha_to_binary["A"]
      translate = @translate_a
      return a_value
    end

    def translate_z(z)
      z_value = @alpha_to_binary["z"]
      translate = @translate_z
      return z_value
    end

    def translate_z(capital_z)
      z_value = @alpha_to_binary["Z"]
      translate = @translate_z
      return z_value
    end

    def translate(turing)

      turing_hash = [@alpha_to_binary["t"] + @alpha_to_binary["u"] + @alpha_to_binary["r"] + @alpha_to_binary["i"] + @alpha_to_binary["n"] + @alpha_to_binary["g"]]

      return turing_hash
    end

    def translate(capital_turing)

      turing_hash = [@alpha_to_binary["T"] + @alpha_to_binary["U"] + @alpha_to_binary["R"] + @alpha_to_binary["I"] + @alpha_to_binary["N"] + @alpha_to_binary["G"]]

      return turing_hash
    end

    def translate_blank(blank_space)

      blank_space_value = @alpha_to_binary[" "]

      return blank_space_value
    end

    def translate_symbol(symbols)

      symbol_value = @alpha_to_binary[""]

      return symbol_value
    end

    def translate_hello(hello_world)

      symbol_value = [@alpha_to_binary["H"] + @alpha_to_binary["e"] + @alpha_to_binary["l"] + @alpha_to_binary["l"] + @alpha_to_binary["o"] + @alpha_to_binary["W"]+ @alpha_to_binary["o"] + @alpha_to_binary["r"]+ @alpha_to_binary["l"] + @alpha_to_binary["d"]]

      return symbol_value
    end

    def translate_to_text(hello_world)

      translate_to_text = [@alpha_to_binary["H"] + @alpha_to_binary["e"] + @alpha_to_binary["l"] + @alpha_to_binary["l"] + @alpha_to_binary["o"] + @alpha_to_binary["W"]+ @alpha_to_binary["o"] + @alpha_to_binary["r"]+ @alpha_to_binary["l"] + @alpha_to_binary["d"]]

      return translate_to_text
    end
end
