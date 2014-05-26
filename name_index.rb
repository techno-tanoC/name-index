class NameIndex
  @@COLS = ["ア-オ",
           "カ-ゴ",
           "サ-ゾ",
           "タ-ド",
           "ナ-ノ",
           "ハ-ポ",
           "マ-モ",
           "ヤ-ヨ",
           "ラ-ロ",
           "ワ-ン"]

  def self.match(name)
    @@COLS.find {|col| name =~ /\A[#{col}]/ }.chr
  end 

  def self.create_index(names)
    names
    .sort
    .group_by(&method(:match))
    .to_a
  end
end

inp = ['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ']

p NameIndex.create_index(inp)
