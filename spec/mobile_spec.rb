# -*- encoding : utf-8 -*-
require 'spec_helper'
include KA

describe "mobile correctness" do
  specify { correct_mobile?('595335514').should == true }
  specify { correct_mobile?('(595)33-55-14').should == true }
  specify { correct_mobile?('(595)335-514').should == true }
  specify { correct_mobile?('mob: (595)335-514').should == true }
  specify { correct_mobile?('mob: (895)335-514').should == false }
  specify { correct_mobile?('mob: (595)335-51').should == false }
  specify { correct_mobile?('mob: (595)335-5144').should == false }
end

describe "compacting mobile" do
  specify { compact_mobile('595335514').should == '595335514' }
  specify { compact_mobile('(595)335514').should == '595335514' }
  specify { compact_mobile('(595)335-514').should == '595335514' }
  specify { compact_mobile('mob: (595)335514').should == '595335514' }
end

describe "format mobile" do
  specify { format_mobile('595335514').should == '(595)335-514' }
  specify { format_mobile('(595)335514').should == '(595)335-514' }
  specify { format_mobile('mob: (595)335514').should == '(595)335-514' }
  specify { format_mobile('595335514', by: 1, operator_pre: '[', operator_suf: ']').should == '[595]3-3-5-5-1-4' }
  specify { format_mobile('595335514', by: 2, separator: ' ').should == '(595)33 55 14' }
end
