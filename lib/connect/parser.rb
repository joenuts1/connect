#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.12
# from Racc grammer file "".
#

require 'racc/parser.rb'

  require 'connect/extended_array'
  require 'connect/dsl'
  require 'connect/lexer'

module Connect
  class Dsl < Racc::Parser

module_eval(<<'...end dsl.y/module_eval...', 'dsl.y', 267)

  def parse(input)
    scan_str(input) unless empty_definition?(input)
  end

  def power(v1,v2)
    v1 ^ v2
  end

  def multiply(v1,v2)
    v1 * v2
  end

  def divide(v1,v2)
    v1 / v2
  end

  def add(v1,v2)
    v1 + v2
  end

  def subtract(v1,v2)
    v1 - v2
  end

  def do_or(v1,v2)
    v1 || v2
  end

  def do_and(v1,v2)
    v1 && v2
  end

  def on_error(token, value, vstack )
    position =  "Syntax error on line #{lineno} of config file '#{current_file}'"
    text = @ss.peek(20)
    unless value.nil?
      msg = "#{position} at value '#{value}' : #{text}"
    else
      msg = "#{position} at token '#{token}' : #{text}"
    end
    if @ss.eos?
      msg = "#{position}: Unexpected end of file"
    end
    raise ParseError, msg
  end
...end dsl.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
    17,   149,     9,    10,    36,    37,     9,    10,     9,    27,
     9,    10,   149,   154,     9,    10,    39,    40,   -92,   -92,
   -92,   -92,   142,    92,   166,    93,   149,   128,    92,    11,
    93,    98,    14,    11,    16,   150,    14,    11,    16,    67,
    14,    11,    16,    92,    14,    93,    16,   102,   120,   102,
    42,    43,   121,    92,   122,    93,    24,    25,    47,    48,
     9,    44,    42,    43,   134,    56,    36,    37,    24,    25,
    47,    48,   119,   162,     9,    44,    42,    43,   136,    56,
    55,    79,    24,    25,    47,    48,   137,     9,    44,    42,
    43,    67,    56,    66,    55,    24,    25,    47,    48,   140,
     9,    44,    42,    43,    65,    56,   129,    55,    24,    25,
    47,    48,    36,    37,   107,    42,    43,   143,    56,   116,
    55,    24,    25,    47,    48,    36,    37,   107,    42,    43,
    62,    56,    59,    55,    24,    25,    47,    48,    36,    37,
   107,    42,    43,   114,    56,   151,    55,    24,    25,    47,
    48,     9,    27,   107,    42,    43,    95,    56,    33,    55,
    24,    25,    47,    48,    24,    25,   107,    42,    43,    32,
    56,   102,    55,    24,    25,    47,    48,    39,    40,   107,
    42,    43,   156,    56,   100,    55,    24,    25,    47,    48,
     9,    27,   107,    42,    43,    23,    56,   114,    55,    24,
    25,    47,    48,    24,    25,   107,    42,    43,   158,    56,
   159,    55,    24,    25,    47,    48,     9,    27,    83,    42,
    43,    21,    39,    40,    55,    24,    25,    47,    48,    83,
    42,    43,    20,   119,   164,   165,    24,    25,    47,    48,
    83,    42,    43,     9,    27,    19,    81,    24,    25,    47,
    48,    24,    25,    42,    43,   167,   102,    42,    43,    24,
    25,    47,    48,    24,    25,    47,    48,     9,    27,   169,
   170,    42,    43,     9,    27,    24,    25,    24,    25,    47,
    48,    24,    25,     9,    27,   nil,   nil,   nil,   nil,    39,
    40,    68,    69,    70,    71,    72,    73,    74 ]

racc_action_check = [
     1,   131,     1,     1,    63,    63,     0,     0,    32,    32,
    22,    22,   161,   131,    12,    12,    22,    22,   136,   136,
   137,   137,   117,    94,   161,    94,   125,    93,    57,     1,
    57,    63,     1,     0,     1,   125,     0,    22,     0,    44,
    22,    12,    22,    87,    12,    87,    12,   136,    83,   137,
   151,   151,    85,    58,    85,    58,   151,   151,   151,   151,
    55,    55,    55,    55,   102,    55,    21,    21,    55,    55,
    55,    55,    80,   151,   123,   123,   123,   123,   104,   123,
    55,    55,   123,   123,   123,   123,   105,    23,    23,    23,
    23,   107,    23,    35,   123,    23,    23,    23,    23,   115,
   114,   114,   114,   114,    34,   114,    98,    23,   114,   114,
   114,   114,   129,   129,    74,    74,    74,   118,    74,    78,
   114,    74,    74,    74,    74,   103,   103,    71,    71,    71,
    31,    71,    26,    74,    71,    71,    71,    71,   101,   101,
    70,    70,    70,    75,    70,   128,    71,    70,    70,    70,
    70,    15,    15,    68,    68,    68,    59,    68,    17,    70,
    68,    68,    68,    68,    14,    14,   116,   116,   116,    16,
   116,    66,    68,   116,   116,   116,   116,   163,   163,    73,
    73,    73,   134,    73,    64,   116,    73,    73,    73,    73,
    99,    99,    69,    69,    69,    13,    69,   141,    73,    69,
    69,    69,    69,    62,    62,    72,    72,    72,   145,    72,
   146,    69,    72,    72,    72,    72,   130,   130,   119,   119,
   119,    11,   130,   130,    72,   119,   119,   119,   119,   133,
   133,   133,    10,   155,   156,   157,   133,   133,   133,   133,
    56,    56,    56,   120,   120,     9,    56,    56,    56,    56,
    56,   120,   120,   100,   100,   162,    65,    92,    92,   100,
   100,   100,   100,    92,    92,    92,    92,    67,    67,   167,
   169,   149,   149,    20,    20,    67,    67,   149,   149,   149,
   149,    20,    20,    29,    29,   nil,   nil,   nil,   nil,    29,
    29,    54,    54,    54,    54,    54,    54,    54 ]

racc_action_pointer = [
     4,     0,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   242,
   207,   219,    12,   164,   154,   149,   134,   158,   nil,   nil,
   271,    60,     8,    85,   nil,   nil,    99,   nil,   nil,   281,
   nil,    99,     6,   nil,    78,    67,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,    14,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   276,    58,   237,     6,    31,   154,
   nil,   nil,   193,    -2,   159,   221,   136,   265,   150,   189,
   137,   124,   202,   176,   111,   129,   nil,   nil,   105,   nil,
    58,   nil,   nil,    23,   nil,    24,   nil,    21,   nil,   nil,
   nil,   nil,   253,    24,     1,   nil,   nil,   nil,   104,   188,
   249,   132,    60,   119,    52,    60,   nil,    66,   nil,   nil,
   nil,   nil,   nil,   nil,    98,    76,   163,    -1,   108,   215,
   241,   nil,   nil,    72,   nil,    12,   nil,   nil,   120,   106,
   214,   -13,   nil,   226,   146,   nil,    12,    14,   nil,   nil,
   nil,   183,   nil,   nil,   nil,   182,   184,   nil,   nil,   267,
   nil,    46,   nil,   nil,   nil,   219,   230,   212,   nil,   nil,
   nil,    -2,   227,   169,   nil,   nil,   nil,   266,   nil,   244,
   nil ]

racc_action_default = [
   -94,   -94,    -1,    -5,    -6,    -7,    -8,    -9,   -10,   -94,
   -16,   -94,   -94,   -94,   -94,   -94,   -94,   -94,    -2,   -15,
   -94,   -94,   -94,   -94,   -17,   -18,   -75,   -16,   -77,   -94,
   -85,   -94,   -94,   171,   -94,   -94,   -11,   -12,   -52,   -13,
   -14,   -53,    -3,    -4,   -16,   -19,   -20,   -21,   -22,   -23,
   -24,   -25,   -26,   -27,   -42,   -94,   -94,   -71,   -73,   -94,
   -80,   -84,   -94,   -94,   -83,   -92,   -92,   -94,   -94,   -94,
   -94,   -94,   -94,   -94,   -94,   -60,   -30,   -34,   -60,   -57,
   -60,   -59,   -62,   -64,   -65,   -94,   -70,   -72,   -44,   -45,
   -46,   -47,   -94,   -94,   -74,   -76,   -86,   -78,   -94,   -94,
   -94,   -94,   -94,   -94,   -94,   -94,   -35,   -94,   -36,   -37,
   -38,   -39,   -40,   -41,   -61,   -94,   -61,   -94,   -94,   -61,
   -94,   -66,   -67,   -94,   -43,   -94,   -32,   -33,   -49,   -94,
   -94,   -94,   -87,   -94,   -94,   -88,   -90,   -89,   -28,   -29,
   -54,   -60,   -56,   -58,   -63,   -94,   -94,   -68,   -69,   -94,
   -48,   -94,   -79,   -81,   -82,   -60,   -94,   -94,   -89,   -90,
   -31,   -94,   -94,   -94,   -93,   -55,   -50,   -94,   -91,   -94,
   -51 ]

racc_goto_table = [
    41,    31,    38,    61,    29,     1,    35,    60,    26,    58,
    84,    75,    80,    86,    34,    31,   115,    22,    64,   117,
    54,   118,   103,   124,    78,   125,     7,     7,    18,   132,
   124,   135,   144,   131,    87,    94,    63,    97,     7,    28,
   123,    77,   160,    57,    99,   nil,   127,   nil,     7,    18,
   nil,   nil,   nil,   105,   127,   nil,    96,   nil,   nil,   nil,
   nil,   104,   nil,   nil,   nil,   106,   108,   109,   110,   111,
   112,   113,   141,    84,   nil,   nil,    86,   nil,   nil,   nil,
   nil,   nil,   157,   139,   161,    31,   nil,    84,   130,   155,
    86,   nil,   148,   103,   nil,   nil,   163,   nil,   nil,   nil,
    77,   nil,   nil,   127,    61,   127,   145,   nil,   153,    77,
   152,   138,   nil,   nil,   146,   nil,    31,   nil,   nil,   nil,
   147,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   168 ]

racc_goto_check = [
    11,    12,    10,    40,    39,     1,    12,    11,    13,    12,
    14,    19,    31,    18,    13,    12,    30,     1,    12,    30,
    15,    30,    41,    25,    20,    21,     8,     8,     2,    42,
    25,    42,    32,    21,    24,    24,    37,    38,     8,    36,
    34,    12,    22,    23,    10,   nil,    14,   nil,     8,     2,
   nil,   nil,   nil,    12,    14,   nil,    13,   nil,   nil,   nil,
   nil,    13,   nil,   nil,   nil,    15,    15,    15,    15,    15,
    15,    15,    19,    14,   nil,   nil,    18,   nil,   nil,   nil,
   nil,   nil,    30,    20,    21,    12,   nil,    14,    39,    31,
    18,   nil,    20,    41,   nil,   nil,    30,   nil,   nil,   nil,
    12,   nil,   nil,    14,    40,    14,    12,   nil,    11,    12,
    10,    15,   nil,   nil,    13,   nil,    12,   nil,   nil,   nil,
    15,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,    11 ]

racc_goto_pointer = [
   nil,     5,    27,   nil,   nil,   nil,   nil,   nil,    26,   nil,
   -19,   -22,   -14,    -6,   -46,    -3,   nil,   nil,   -43,   -44,
   -31,   -67,  -107,    20,   -23,   -64,   nil,   nil,   nil,   nil,
   -59,   -44,   -87,   nil,   -45,   nil,    24,     4,   -26,   -11,
   -26,   -44,   -72 ]

racc_goto_default = [
   nil,   nil,     2,    46,     3,     4,     5,     6,    52,     8,
   133,   nil,    13,    45,    49,    76,    50,    51,    53,   nil,
   nil,   nil,   126,   nil,   nil,    88,    89,    90,    91,    12,
   nil,   nil,    82,    85,   nil,    15,   nil,   nil,   nil,   nil,
    30,   101,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 38, :_reduce_none,
  2, 38, :_reduce_none,
  1, 40, :_reduce_none,
  1, 40, :_reduce_none,
  1, 39, :_reduce_none,
  1, 39, :_reduce_none,
  1, 39, :_reduce_none,
  1, 39, :_reduce_none,
  1, 39, :_reduce_none,
  1, 39, :_reduce_none,
  1, 47, :_reduce_none,
  1, 47, :_reduce_none,
  1, 48, :_reduce_none,
  1, 48, :_reduce_none,
  2, 49, :_reduce_15,
  1, 49, :_reduce_16,
  1, 50, :_reduce_17,
  1, 50, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 51, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  3, 56, :_reduce_28,
  3, 56, :_reduce_29,
  1, 56, :_reduce_30,
  3, 58, :_reduce_31,
  1, 58, :_reduce_32,
  1, 59, :_reduce_none,
  1, 57, :_reduce_34,
  3, 60, :_reduce_35,
  3, 60, :_reduce_36,
  3, 60, :_reduce_37,
  3, 60, :_reduce_38,
  3, 60, :_reduce_39,
  3, 60, :_reduce_40,
  3, 60, :_reduce_41,
  1, 60, :_reduce_none,
  2, 61, :_reduce_43,
  1, 61, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  3, 63, :_reduce_48,
  2, 64, :_reduce_49,
  5, 64, :_reduce_50,
  7, 65, :_reduce_51,
  3, 66, :_reduce_52,
  3, 46, :_reduce_53,
  4, 53, :_reduce_54,
  6, 53, :_reduce_55,
  4, 53, :_reduce_56,
  2, 53, :_reduce_57,
  4, 54, :_reduce_58,
  2, 54, :_reduce_59,
  0, 67, :_reduce_none,
  1, 67, :_reduce_none,
  1, 68, :_reduce_none,
  3, 68, :_reduce_63,
  1, 70, :_reduce_64,
  1, 70, :_reduce_none,
  1, 71, :_reduce_none,
  1, 71, :_reduce_none,
  3, 69, :_reduce_68,
  3, 69, :_reduce_69,
  1, 69, :_reduce_70,
  3, 41, :_reduce_71,
  4, 41, :_reduce_72,
  3, 42, :_reduce_73,
  4, 42, :_reduce_74,
  2, 43, :_reduce_75,
  4, 43, :_reduce_76,
  2, 44, :_reduce_none,
  4, 44, :_reduce_none,
  6, 72, :_reduce_79,
  2, 73, :_reduce_80,
  3, 75, :_reduce_none,
  4, 74, :_reduce_82,
  1, 74, :_reduce_83,
  2, 76, :_reduce_none,
  1, 76, :_reduce_none,
  3, 77, :_reduce_86,
  6, 45, :_reduce_87,
  6, 45, :_reduce_88,
  4, 55, :_reduce_89,
  4, 55, :_reduce_90,
  4, 79, :_reduce_91,
  0, 78, :_reduce_none,
  4, 78, :_reduce_93 ]

racc_reduce_n = 94

racc_shift_n = 171

racc_token_table = {
  false => 0,
  :error => 1,
  :SCOPE => 2,
  :IDENTIFIER => 3,
  :INTEGER => 4,
  :FLOAT => 5,
  :DO => 6,
  "{" => 7,
  :END => 8,
  "}" => 9,
  :DOUBLE_QUOTED => 10,
  :SINGLE_QUOTED => 11,
  :BOOLEAN => 12,
  :UNDEF => 13,
  "," => 14,
  "^" => 15,
  "*" => 16,
  "/" => 17,
  "+" => 18,
  "-" => 19,
  :OR => 20,
  :AND => 21,
  "[" => 22,
  "]" => 23,
  "." => 24,
  "(" => 25,
  ")" => 26,
  "&" => 27,
  ":" => 28,
  :WITH => 29,
  :HASH_ROCKET => 30,
  "=" => 31,
  :INCLUDE => 32,
  :INTO => 33,
  :IMPORT => 34,
  :FROM => 35,
  :TO => 36 }

racc_nt_base = 37

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "SCOPE",
  "IDENTIFIER",
  "INTEGER",
  "FLOAT",
  "DO",
  "\"{\"",
  "END",
  "\"}\"",
  "DOUBLE_QUOTED",
  "SINGLE_QUOTED",
  "BOOLEAN",
  "UNDEF",
  "\",\"",
  "\"^\"",
  "\"*\"",
  "\"/\"",
  "\"+\"",
  "\"-\"",
  "OR",
  "AND",
  "\"[\"",
  "\"]\"",
  "\".\"",
  "\"(\"",
  "\")\"",
  "\"&\"",
  "\":\"",
  "WITH",
  "HASH_ROCKET",
  "\"=\"",
  "INCLUDE",
  "INTO",
  "IMPORT",
  "FROM",
  "TO",
  "$start",
  "dsl",
  "config",
  "number",
  "assignment",
  "connection",
  "include",
  "import",
  "object_definition",
  "with",
  "block_begin",
  "block_end",
  "literal",
  "string",
  "scalar",
  "value",
  "array",
  "hash",
  "object_reference",
  "values",
  "reference",
  "parameters",
  "parameter",
  "expression",
  "selectors",
  "selector",
  "array_selector",
  "function_selector",
  "special_selector",
  "with_scope_do",
  "optional_comma",
  "hashpairs",
  "hashpair",
  "hashkey",
  "hash_seperator",
  "import_with_scope_begin",
  "import_with_scope_end",
  "datasource",
  "import_block",
  "import_statements",
  "import_statement",
  "iterator",
  "definition_block" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

# reduce 1 omitted

# reduce 2 omitted

# reduce 3 omitted

# reduce 4 omitted

# reduce 5 omitted

# reduce 6 omitted

# reduce 7 omitted

# reduce 8 omitted

# reduce 9 omitted

# reduce 10 omitted

# reduce 11 omitted

# reduce 12 omitted

# reduce 13 omitted

# reduce 14 omitted

module_eval(<<'.,.,', 'dsl.y', 42)
  def _reduce_15(val, _values, result)
     result = "#{val[0]}#{val[1]}"
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 43)
  def _reduce_16(val, _values, result)
     result = "#{val[0]}"
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 47)
  def _reduce_17(val, _values, result)
     result = interpolate(val[0])
    result
  end
.,.,

# reduce 18 omitted

# reduce 19 omitted

# reduce 20 omitted

# reduce 21 omitted

# reduce 22 omitted

# reduce 23 omitted

# reduce 24 omitted

# reduce 25 omitted

# reduce 26 omitted

# reduce 27 omitted

module_eval(<<'.,.,', 'dsl.y', 67)
  def _reduce_28(val, _values, result)
     result = val[0] << val[2]
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 68)
  def _reduce_29(val, _values, result)
     result = val[0] << val[2]
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 69)
  def _reduce_30(val, _values, result)
     result = ExtendedArray[val[0]]
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 73)
  def _reduce_31(val, _values, result)
     result = val[0] << val[2]
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 74)
  def _reduce_32(val, _values, result)
     result = [val[0]]
    result
  end
.,.,

# reduce 33 omitted

module_eval(<<'.,.,', 'dsl.y', 82)
  def _reduce_34(val, _values, result)
    result = reference(val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 86)
  def _reduce_35(val, _values, result)
     result = power(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 87)
  def _reduce_36(val, _values, result)
     result = multiply(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 88)
  def _reduce_37(val, _values, result)
     result = divide(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 89)
  def _reduce_38(val, _values, result)
     result = add(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 90)
  def _reduce_39(val, _values, result)
     result = subtract(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 91)
  def _reduce_40(val, _values, result)
     result = do_or(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 92)
  def _reduce_41(val, _values, result)
     result = do_and(val[0],val[2])
    result
  end
.,.,

# reduce 42 omitted

module_eval(<<'.,.,', 'dsl.y', 100)
  def _reduce_43(val, _values, result)
     result =val.join
    result
  end
.,.,

# reduce 44 omitted

# reduce 45 omitted

# reduce 46 omitted

# reduce 47 omitted

module_eval(<<'.,.,', 'dsl.y', 111)
  def _reduce_48(val, _values, result)
     result = val[0] + to_param(val[1]) +  val[2]
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 115)
  def _reduce_49(val, _values, result)
     result = val.join
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 116)
  def _reduce_50(val, _values, result)
     result = val[0] + val[1] + val[2] + to_param(val[3]) +  val[4]
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 120)
  def _reduce_51(val, _values, result)
     result = val.join
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 127)
  def _reduce_52(val, _values, result)
     push_scope(val[1])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 131)
  def _reduce_53(val, _values, result)
     pop_scope 
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 138)
  def _reduce_54(val, _values, result)
     result = val[1]
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 139)
  def _reduce_55(val, _values, result)
     result = val[3].unshift(val[1])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 140)
  def _reduce_56(val, _values, result)
     result = ExtendedArray[val[1]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 141)
  def _reduce_57(val, _values, result)
     result = ExtendedArray[]
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 148)
  def _reduce_58(val, _values, result)
     result = val[1]
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 149)
  def _reduce_59(val, _values, result)
     result = MethodHash.new
    result
  end
.,.,

# reduce 60 omitted

# reduce 61 omitted

# reduce 62 omitted

module_eval(<<'.,.,', 'dsl.y', 159)
  def _reduce_63(val, _values, result)
     result.merge!(val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 163)
  def _reduce_64(val, _values, result)
     result = val[0]
    result
  end
.,.,

# reduce 65 omitted

# reduce 66 omitted

# reduce 67 omitted

module_eval(<<'.,.,', 'dsl.y', 173)
  def _reduce_68(val, _values, result)
     result = MethodHash[val[0], val[2]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 174)
  def _reduce_69(val, _values, result)
     result = MethodHash[val[0], val[2]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 175)
  def _reduce_70(val, _values, result)
     result = MethodHash[val[0].object_id, val[0]]
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 182)
  def _reduce_71(val, _values, result)
     assign(val[0], val[2], nil)
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 183)
  def _reduce_72(val, _values, result)
     assign(val[0], val[2], val[3])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 187)
  def _reduce_73(val, _values, result)
     connect(val[0], val[2], nil)
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 188)
  def _reduce_74(val, _values, result)
     connect(val[0], val[2], val[3])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 195)
  def _reduce_75(val, _values, result)
     include_file(val[1])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 196)
  def _reduce_76(val, _values, result)
     include_file(val[1], val[3])
    result
  end
.,.,

# reduce 77 omitted

# reduce 78 omitted

module_eval(<<'.,.,', 'dsl.y', 208)
  def _reduce_79(val, _values, result)
     push_scope(val[4])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 212)
  def _reduce_80(val, _values, result)
     pop_scope
    result
  end
.,.,

# reduce 81 omitted

module_eval(<<'.,.,', 'dsl.y', 219)
  def _reduce_82(val, _values, result)
     datasource( val[0], *val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 220)
  def _reduce_83(val, _values, result)
     datasource( val[0], *[])
    result
  end
.,.,

# reduce 84 omitted

# reduce 85 omitted

module_eval(<<'.,.,', 'dsl.y', 229)
  def _reduce_86(val, _values, result)
     import(val[0], val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 237)
  def _reduce_87(val, _values, result)
     result = define(val[0], val[2], val[5], val[4])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 239)
  def _reduce_88(val, _values, result)
     result = define(val[0], val[2], val[5], val[4])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 243)
  def _reduce_89(val, _values, result)
     result = define(val[0], val[2], val[5], val[4])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 244)
  def _reduce_90(val, _values, result)
     result = define(val[0], val[2], val[5], val[4])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 250)
  def _reduce_91(val, _values, result)
     result = val[1]
    result
  end
.,.,

# reduce 92 omitted

module_eval(<<'.,.,', 'dsl.y', 255)
  def _reduce_93(val, _values, result)
     result = {:from => val[1], :to => val[3]}
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

  end   # class Dsl
  end   # module Connect
