class Widget < ActiveRecord::Base
  acts_as_versioned_rails3 :sequence_name => 'widgets_seq', :association_options => {
    :dependent => :nullify, :order => 'version desc'
  }
  non_versioned_columns << 'foo'
end