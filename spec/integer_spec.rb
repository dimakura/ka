# -*- encoding : utf-8 -*-
require 'spec_helper'

describe 'integer into text' do
  specify { 1.to_ka.should == 'ერთი' }
  specify { 2.to_ka.should == 'ორი' }
  specify { 20.to_ka.should == 'ოცი' }
  specify { 25.to_ka.should == 'ოცდა ხუთი' }
  specify { 1234.to_ka.should == 'ათას ორას ოცდა თოთხმეტი' }
  specify { 1000_000.to_ka.should == 'მილიონი' }
  specify { 1000_000_000.to_ka.should == 'მილიარდი' }
  specify { 1000_000_000_000.to_ka.should == 'ტრილიონი' }
  specify { 999.to_ka.should == 'ცხრაას ოთხმოცდა ცხრამეტი' }
  specify { 999_999_999_999_999.to_ka.should == 'ცხრაას ოთხმოცდა ცხრამეტი ტრილიონ ცხრაას ოთხმოცდა ცხრამეტი მილიარდ ცხრაას ოთხმოცდა ცხრამეტი მილიონ ცხრაას ოთხმოცდა ცხრამეტი ათას ცხრაას ოთხმოცდა ცხრამეტი' }
end
