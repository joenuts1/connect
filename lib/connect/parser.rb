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

module_eval(<<'...end dsl.y/module_eval...', 'dsl.y', 266)

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
    position =  "Syntax error around line #{lineno} of config file '#{current_file}'"
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
    17,   142,     9,    10,   -92,   -92,     9,    10,     4,   126,
     9,    10,     4,   -92,   -92,   140,     4,     9,    10,    39,
    40,    36,    37,     4,    87,   125,   165,    88,   127,   136,
   128,    11,   106,   122,    14,    11,    16,   140,    14,    11,
    16,   106,    14,   140,    16,   138,    11,   102,   153,    14,
   141,    16,     9,    46,    42,    43,    44,    45,     9,    27,
    60,    36,    37,    24,    25,    49,    50,    72,    73,    24,
    25,    70,    71,    59,   139,     9,    27,     9,    27,   159,
     9,    46,    42,    43,    44,    45,    24,    25,    60,     9,
    27,    24,    25,    49,    50,     9,    46,    42,    43,    44,
    45,    59,    91,    60,    36,    37,    24,    25,    49,    50,
     9,    46,    42,    43,    44,    45,    59,   121,    60,    24,
    25,    24,    25,    49,    50,     9,    46,    42,    43,    44,
    45,    59,   130,    60,    36,    37,    24,    25,    49,    50,
     9,    46,    42,    43,    44,    45,    59,   143,    60,    36,
    37,    24,    25,    49,    50,     9,    46,    42,    43,    44,
    45,    59,    62,    60,    24,    25,    24,    25,    49,    50,
     9,    46,    42,    43,    44,    45,    59,   145,    60,    39,
    40,    24,    25,    49,    50,     9,    46,    42,    43,    44,
    45,    59,   146,    60,     9,    27,    24,    25,    49,    50,
     9,    46,    42,    43,    44,    45,    59,    65,    60,    33,
    32,    24,    25,    49,    50,     9,    46,    42,    43,    44,
    45,    59,    68,    60,    69,    74,    24,    25,    49,    50,
     9,    46,    42,    43,    44,    45,    59,    99,    60,   155,
   104,    24,    25,    49,    50,     9,    46,    42,    43,    44,
    45,    59,    23,    60,    21,    20,    24,    25,    49,    50,
     9,    46,    42,    43,    44,    45,    59,    19,    60,   160,
   161,    24,    25,    49,    50,     9,    46,    42,    43,    44,
    45,    59,   125,    60,   163,   164,    24,    25,    49,    50,
     9,    46,    42,    43,    44,    45,    59,   106,    60,     9,
    27,    24,    25,    49,    50,    79,    78,   166,    39,    40,
   106,    59,     9,    27,   168,   169,   nil,    75,    76,    77,
    80,    81,    87,    24,    25,    88,    95,    42,    43,    44,
    45,    95,    42,    43,    44,    45,    24,    25,    49,    50,
   nil,    24,    25,    49,    50,    95,    42,    43,    44,    45,
     9,    27,   nil,   nil,    93,    24,    25,    49,    50,    39,
    40 ]

racc_action_check = [
     1,   119,     1,     1,   139,   139,     0,     0,     1,    95,
    22,    22,     0,   138,   138,   158,    22,    12,    12,    22,
    22,    66,    66,    12,    82,    92,   158,    82,    97,   106,
    97,     1,   139,    89,     1,     0,     1,   132,     0,    22,
     0,   138,    22,   118,    22,   108,    12,    66,   132,    12,
   118,    12,   143,   143,   143,   143,   143,   143,    20,    20,
   143,   130,   130,   143,   143,   143,   143,    45,    45,    20,
    20,    44,    44,   143,   109,    74,    74,    32,    32,   143,
    59,    59,    59,    59,    59,    59,    74,    74,    59,    15,
    15,    59,    59,    59,    59,   129,   129,   129,   129,   129,
   129,    59,    59,   129,    21,    21,   129,   129,   129,   129,
    75,    75,    75,    75,    75,    75,   129,    88,    75,    14,
    14,    75,    75,    75,    75,   140,   140,   140,   140,   140,
   140,    75,   102,   140,   107,   107,   140,   140,   140,   140,
    76,    76,    76,    76,    76,    76,   140,   121,    76,   105,
   105,    76,    76,    76,    76,   142,   142,   142,   142,   142,
   142,    76,    26,   142,    65,    65,   142,   142,   142,   142,
    77,    77,    77,    77,    77,    77,   142,   123,    77,   162,
   162,    77,    77,    77,    77,   122,   122,   122,   122,   122,
   122,    77,   124,   122,   103,   103,   122,   122,   122,   122,
   104,   104,   104,   104,   104,   104,   122,    31,   104,    17,
    16,   104,   104,   104,   104,    87,    87,    87,    87,    87,
    87,   104,    34,    87,    35,    46,    87,    87,    87,    87,
    81,    81,    81,    81,    81,    81,    87,    62,    81,   136,
    67,    81,    81,    81,    81,    80,    80,    80,    80,    80,
    80,    81,    13,    80,    11,    10,    80,    80,    80,    80,
    79,    79,    79,    79,    79,    79,    80,     9,    79,   148,
   149,    79,    79,    79,    79,    78,    78,    78,    78,    78,
    78,    79,   154,    78,   155,   157,    78,    78,    78,    78,
    23,    23,    23,    23,    23,    23,    78,    69,    23,    29,
    29,    23,    23,    23,    23,    58,    58,   159,    29,    29,
    68,    23,   126,   126,   166,   168,   nil,    58,    58,    58,
    58,    58,    58,   126,   126,    58,   125,   125,   125,   125,
   125,   135,   135,   135,   135,   135,   125,   125,   125,   125,
   nil,   135,   135,   135,   135,    60,    60,    60,    60,    60,
   131,   131,   nil,   nil,    60,    60,    60,    60,    60,   131,
   131 ]

racc_action_pointer = [
     4,     0,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   264,
   228,   252,    15,   219,   106,    87,   173,   209,   nil,   nil,
    56,    95,     8,   288,   nil,   nil,   127,   nil,   nil,   297,
   nil,   174,    75,   nil,   194,   196,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,    67,    63,   198,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   299,    78,
   342,   nil,   235,   nil,   nil,   151,    12,   213,   273,   260,
   nil,   nil,   nil,   nil,    73,   108,   138,   168,   273,   258,
   243,   228,     1,   nil,   nil,   nil,   nil,   213,   114,    16,
   nil,   nil,     8,   nil,   nil,   -18,   nil,    -2,   nil,   nil,
   nil,   nil,   130,   192,   198,   140,    25,   125,    17,    46,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    26,   -24,
   nil,   120,   183,   153,   180,   323,   310,   nil,   nil,    93,
    52,   348,    20,   nil,   nil,   328,   201,   nil,     4,    -5,
   123,   nil,   153,    50,   nil,   nil,   nil,   nil,   241,   242,
   nil,   nil,   nil,   nil,   265,   280,   nil,   261,    -2,   277,
   nil,   nil,   168,   nil,   nil,   nil,   311,   nil,   287,   nil ]

racc_action_default = [
   -94,   -94,    -1,    -9,   -10,   -11,   -12,   -13,   -14,   -94,
   -20,   -94,   -94,   -94,   -94,   -94,   -94,   -94,    -2,   -19,
   -94,   -94,   -94,   -94,   -21,   -22,   -75,   -20,   -77,   -94,
   -85,   -94,   -94,   170,   -94,   -94,   -15,   -16,   -58,   -17,
   -18,   -59,    -3,    -4,   -94,   -94,   -20,   -23,   -24,   -25,
   -26,   -27,   -28,   -29,   -30,   -31,   -32,   -38,   -47,   -94,
   -94,   -74,   -94,   -80,   -84,   -94,   -94,   -83,   -92,   -92,
    -5,    -6,    -7,    -8,   -94,   -94,   -94,   -94,   -94,   -94,
   -94,   -94,   -46,   -49,   -50,   -51,   -52,   -94,   -94,   -64,
   -34,   -61,   -64,   -63,   -66,   -68,   -69,   -94,   -73,   -76,
   -86,   -78,   -94,   -94,   -94,   -94,   -94,   -94,   -94,   -94,
   -39,   -40,   -41,   -42,   -43,   -44,   -45,   -48,   -94,   -36,
   -37,   -55,   -65,   -94,   -94,   -65,   -94,   -70,   -71,   -94,
   -94,   -94,   -94,   -36,   -87,   -94,   -94,   -88,   -90,   -89,
   -94,   -53,   -94,   -94,   -33,   -60,   -62,   -67,   -94,   -94,
   -72,   -79,   -81,   -82,   -64,   -94,   -35,   -94,   -94,   -94,
   -89,   -90,   -94,   -93,   -54,   -56,   -94,   -91,   -94,   -57 ]

racc_goto_table = [
    41,    13,    13,    26,    38,    64,    61,    63,    29,    34,
    92,    96,    98,    13,   107,   123,    31,   118,   124,   119,
    83,    35,    18,    13,     7,     7,     1,   134,   101,   137,
    31,    66,    28,    67,   132,    82,     7,    89,    22,   129,
   147,   nil,    90,    18,   117,   nil,     7,   nil,   nil,   103,
   nil,   nil,   nil,   nil,   100,   110,   111,   112,   113,   114,
   115,   116,   nil,   108,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   156,   158,   157,   109,    96,    98,   nil,   nil,
   162,   nil,   nil,   nil,   107,   154,    96,    98,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   131,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,    31,   144,   nil,    64,   nil,   152,
   nil,   nil,   150,   151,   nil,   149,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   148,   nil,   nil,
   nil,   nil,    31,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   167 ]

racc_goto_check = [
    10,    11,    11,    12,     9,    39,    20,    10,    38,    12,
    30,    13,    17,    11,    40,    29,    11,    21,    29,    22,
    24,    11,     2,    11,     7,     7,     1,    41,    37,    41,
    11,    36,    35,    11,    21,    23,     7,    19,     1,    33,
    31,   nil,    20,     2,    24,   nil,     7,   nil,   nil,     9,
   nil,   nil,   nil,   nil,    12,    14,    14,    14,    14,    14,
    14,    14,   nil,    12,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,    22,    21,    22,    11,    13,    17,   nil,   nil,
    29,   nil,   nil,   nil,    40,    30,    13,    17,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,    38,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,    11,    20,   nil,    39,   nil,    10,
   nil,   nil,    20,     9,   nil,    12,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,    11,   nil,   nil,
   nil,   nil,    11,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
    10 ]

racc_goto_pointer = [
   nil,    26,    21,   nil,   nil,   nil,   nil,    24,   nil,   -17,
   -22,     1,   -11,   -49,   -20,   nil,   nil,   -48,   nil,   -22,
   -17,   -70,   -68,   -23,   -38,   nil,   nil,   nil,   nil,   -74,
   -50,   -85,   nil,   -58,   nil,    17,    -1,   -38,    -7,   -24,
   -55,   -78 ]

racc_goto_default = [
   nil,   nil,     2,    48,     3,     5,     6,    54,     8,   135,
   nil,    57,    47,    51,    58,    52,    53,    55,    56,   nil,
   120,   nil,   133,   nil,   nil,    84,    85,    86,    12,   nil,
   nil,    94,    97,   nil,    15,   nil,   nil,   nil,   nil,    30,
   105,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 40, :_reduce_none,
  2, 40, :_reduce_none,
  1, 42, :_reduce_none,
  1, 42, :_reduce_none,
  2, 42, :_reduce_5,
  2, 42, :_reduce_6,
  2, 42, :_reduce_7,
  2, 42, :_reduce_8,
  1, 41, :_reduce_none,
  1, 41, :_reduce_none,
  1, 41, :_reduce_none,
  1, 41, :_reduce_none,
  1, 41, :_reduce_none,
  1, 41, :_reduce_none,
  1, 48, :_reduce_none,
  1, 48, :_reduce_none,
  1, 49, :_reduce_none,
  1, 49, :_reduce_none,
  2, 50, :_reduce_19,
  1, 50, :_reduce_20,
  1, 51, :_reduce_21,
  1, 51, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 52, :_reduce_none,
  1, 53, :_reduce_none,
  1, 53, :_reduce_none,
  1, 53, :_reduce_none,
  1, 53, :_reduce_none,
  1, 53, :_reduce_none,
  1, 53, :_reduce_none,
  3, 58, :_reduce_33,
  1, 58, :_reduce_34,
  3, 60, :_reduce_35,
  1, 60, :_reduce_36,
  1, 61, :_reduce_none,
  1, 57, :_reduce_38,
  3, 59, :_reduce_39,
  3, 59, :_reduce_40,
  3, 59, :_reduce_41,
  3, 59, :_reduce_42,
  3, 59, :_reduce_43,
  3, 59, :_reduce_44,
  3, 59, :_reduce_45,
  2, 59, :_reduce_46,
  1, 59, :_reduce_none,
  2, 62, :_reduce_48,
  1, 62, :_reduce_none,
  1, 63, :_reduce_none,
  1, 63, :_reduce_none,
  1, 63, :_reduce_none,
  3, 64, :_reduce_53,
  5, 64, :_reduce_54,
  2, 65, :_reduce_55,
  5, 65, :_reduce_56,
  7, 66, :_reduce_57,
  3, 67, :_reduce_58,
  3, 47, :_reduce_59,
  4, 54, :_reduce_60,
  2, 54, :_reduce_61,
  4, 55, :_reduce_62,
  2, 55, :_reduce_63,
  0, 68, :_reduce_none,
  1, 68, :_reduce_none,
  1, 69, :_reduce_none,
  3, 69, :_reduce_67,
  1, 71, :_reduce_68,
  1, 71, :_reduce_none,
  1, 72, :_reduce_none,
  1, 72, :_reduce_none,
  3, 70, :_reduce_72,
  1, 70, :_reduce_73,
  3, 43, :_reduce_74,
  2, 44, :_reduce_75,
  4, 44, :_reduce_76,
  2, 45, :_reduce_none,
  4, 45, :_reduce_none,
  6, 73, :_reduce_79,
  2, 74, :_reduce_80,
  3, 76, :_reduce_none,
  4, 75, :_reduce_82,
  1, 75, :_reduce_83,
  2, 77, :_reduce_none,
  1, 77, :_reduce_none,
  3, 78, :_reduce_86,
  6, 46, :_reduce_87,
  6, 46, :_reduce_88,
  4, 56, :_reduce_89,
  4, 56, :_reduce_90,
  4, 80, :_reduce_91,
  0, 79, :_reduce_none,
  4, 79, :_reduce_93 ]

racc_reduce_n = 94

racc_shift_n = 170

racc_token_table = {
  false => 0,
  :error => 1,
  :SCOPE => 2,
  :IDENTIFIER => 3,
  :INTEGER => 4,
  :FLOAT => 5,
  "-" => 6,
  "+" => 7,
  :connection => 8,
  :DO => 9,
  "{" => 10,
  :END => 11,
  "}" => 12,
  :DOUBLE_QUOTED => 13,
  :SINGLE_QUOTED => 14,
  :BOOLEAN => 15,
  :UNDEF => 16,
  "," => 17,
  "^" => 18,
  "*" => 19,
  "/" => 20,
  :OR => 21,
  :AND => 22,
  "[" => 23,
  "]" => 24,
  :DOUBLE_DOTS => 25,
  "." => 26,
  "(" => 27,
  ")" => 28,
  "&" => 29,
  ":" => 30,
  :WITH => 31,
  :HASH_ROCKET => 32,
  "=" => 33,
  :INCLUDE => 34,
  :INTO => 35,
  :IMPORT => 36,
  :FROM => 37,
  :TO => 38 }

racc_nt_base = 39

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
  "\"-\"",
  "\"+\"",
  "connection",
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
  "OR",
  "AND",
  "\"[\"",
  "\"]\"",
  "DOUBLE_DOTS",
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
  "reference",
  "values",
  "expression",
  "parameters",
  "parameter",
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

module_eval(<<'.,.,', 'dsl.y', 17)
  def _reduce_5(val, _values, result)
     result = 0 - val[1]
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 18)
  def _reduce_6(val, _values, result)
     result = 0 - val[1]
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 19)
  def _reduce_7(val, _values, result)
     result = val[1]
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 20)
  def _reduce_8(val, _values, result)
     result = val[1]
    result
  end
.,.,

# reduce 9 omitted

# reduce 10 omitted

# reduce 11 omitted

# reduce 12 omitted

# reduce 13 omitted

# reduce 14 omitted

# reduce 15 omitted

# reduce 16 omitted

# reduce 17 omitted

# reduce 18 omitted

module_eval(<<'.,.,', 'dsl.y', 46)
  def _reduce_19(val, _values, result)
     result = "#{val[0]}#{val[1]}"
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 47)
  def _reduce_20(val, _values, result)
     result = "#{val[0]}"
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 51)
  def _reduce_21(val, _values, result)
     result = interpolate(val[0], xref)
    result
  end
.,.,

# reduce 22 omitted

# reduce 23 omitted

# reduce 24 omitted

# reduce 25 omitted

# reduce 26 omitted

# reduce 27 omitted

# reduce 28 omitted

# reduce 29 omitted

# reduce 30 omitted

# reduce 31 omitted

# reduce 32 omitted

module_eval(<<'.,.,', 'dsl.y', 72)
  def _reduce_33(val, _values, result)
     result = val[0] << val[2]
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 73)
  def _reduce_34(val, _values, result)
     result = ExtendedArray[val[0]]
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 77)
  def _reduce_35(val, _values, result)
     result = val[0] << val[2]
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 78)
  def _reduce_36(val, _values, result)
     result = [val[0]]
    result
  end
.,.,

# reduce 37 omitted

module_eval(<<'.,.,', 'dsl.y', 86)
  def _reduce_38(val, _values, result)
    result = reference(val[0], xref)
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 90)
  def _reduce_39(val, _values, result)
     result = power(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 91)
  def _reduce_40(val, _values, result)
     result = multiply(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 92)
  def _reduce_41(val, _values, result)
     result = divide(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 93)
  def _reduce_42(val, _values, result)
     result = add(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 94)
  def _reduce_43(val, _values, result)
     result = subtract(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 95)
  def _reduce_44(val, _values, result)
     result = do_or(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 96)
  def _reduce_45(val, _values, result)
     result = do_and(val[0],val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 97)
  def _reduce_46(val, _values, result)
     result = selector(val[0], val[1])
    result
  end
.,.,

# reduce 47 omitted

module_eval(<<'.,.,', 'dsl.y', 105)
  def _reduce_48(val, _values, result)
     result = val.join
    result
  end
.,.,

# reduce 49 omitted

# reduce 50 omitted

# reduce 51 omitted

# reduce 52 omitted

module_eval(<<'.,.,', 'dsl.y', 116)
  def _reduce_53(val, _values, result)
     result = "[#{to_param(val[1])}]" 
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 117)
  def _reduce_54(val, _values, result)
     result = "[#{to_param(val[1])}..#{to_param(val[3])}]" 
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 121)
  def _reduce_55(val, _values, result)
     result = val.join
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 122)
  def _reduce_56(val, _values, result)
     result = val[0] + val[1] + val[2] + to_param(val[3]) +  val[4]
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 126)
  def _reduce_57(val, _values, result)
     result = val.join
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 133)
  def _reduce_58(val, _values, result)
     push_scope(val[1])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 137)
  def _reduce_59(val, _values, result)
     pop_scope 
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 144)
  def _reduce_60(val, _values, result)
     result = val[1]
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 145)
  def _reduce_61(val, _values, result)
     result = ExtendedArray[]
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 152)
  def _reduce_62(val, _values, result)
     result = val[1]
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 153)
  def _reduce_63(val, _values, result)
     result = MethodHash.new
    result
  end
.,.,

# reduce 64 omitted

# reduce 65 omitted

# reduce 66 omitted

module_eval(<<'.,.,', 'dsl.y', 163)
  def _reduce_67(val, _values, result)
     result.merge!(val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 167)
  def _reduce_68(val, _values, result)
     result = val[0]
    result
  end
.,.,

# reduce 69 omitted

# reduce 70 omitted

# reduce 71 omitted

module_eval(<<'.,.,', 'dsl.y', 177)
  def _reduce_72(val, _values, result)
     result = MethodHash[val[0], val[2]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 178)
  def _reduce_73(val, _values, result)
     result = MethodHash[val[0].object_id, val[0]]
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 185)
  def _reduce_74(val, _values, result)
     assign(val[0], val[2], xdef)
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 193)
  def _reduce_75(val, _values, result)
     include_file(val[1])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 194)
  def _reduce_76(val, _values, result)
     include_file(val[1], val[3])
    result
  end
.,.,

# reduce 77 omitted

# reduce 78 omitted

module_eval(<<'.,.,', 'dsl.y', 206)
  def _reduce_79(val, _values, result)
     push_scope(val[4])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 210)
  def _reduce_80(val, _values, result)
     pop_scope
    result
  end
.,.,

# reduce 81 omitted

module_eval(<<'.,.,', 'dsl.y', 217)
  def _reduce_82(val, _values, result)
     datasource( val[0], *val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 218)
  def _reduce_83(val, _values, result)
     datasource( val[0], *[])
    result
  end
.,.,

# reduce 84 omitted

# reduce 85 omitted

module_eval(<<'.,.,', 'dsl.y', 227)
  def _reduce_86(val, _values, result)
     import(val[0], val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 235)
  def _reduce_87(val, _values, result)
     result = define_object(val[0], val[2], val[5], val[4], xdef)
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 237)
  def _reduce_88(val, _values, result)
     result = define_object(val[0], lookup_value(val[2]), val[5], val[4], xdef)
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 242)
  def _reduce_89(val, _values, result)
     result = reference_object(val[0], lookup_value(val[2]), xref)
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 243)
  def _reduce_90(val, _values, result)
     result = reference_object(val[0], val[2], xref)
    result
  end
.,.,

module_eval(<<'.,.,', 'dsl.y', 249)
  def _reduce_91(val, _values, result)
     result = val[1]
    result
  end
.,.,

# reduce 92 omitted

module_eval(<<'.,.,', 'dsl.y', 254)
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
