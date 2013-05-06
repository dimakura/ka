# -*- encoding : utf-8 -*-
require 'spec_helper'

describe 'conversion' do
  specify { 'dimitri'.to_ka(:all).should == 'დიმიტრი' }
  specify { 'დიმიტრი'.to_lat.should == 'dimitri' }
  specify { 'დიმიტრი'.to_geo.should == 'ÃÉÌÉÔÒÉ' }
end
