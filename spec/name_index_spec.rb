require File.expand_path(File.dirname(__FILE__) + '/../name_index')

describe NameIndex do
  specify { expect(NameIndex.match("キシモト")).to eq "カ" }

  specify { expect(NameIndex.match("イトウ")).to eq "ア" }

  specify { expect(NameIndex.match("ババ")).to eq "ハ" }

  specify { expect(NameIndex.match("カネダ")).to eq "カ" }

  specify { expect(NameIndex.match("ワダ")).to eq "ワ" }

  specify { expect(NameIndex.match("ハマダ")).to eq "ハ" }

  specify { expect(NameIndex.create_index([])).to eq [] }

  specify { expect(NameIndex.create_index(['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ']))
            .to eq [ ['ア', ['イトウ']], ['カ', ['カネダ', 'キシモト']], ['ハ', ['ハマダ', 'ババ']], ['ワ', ['ワダ']]] }
end
