require 'test_helper'

class MyriadTest < ActiveSupport::TestCase
  def setup
    @m1 = myriads(:m1)
  end
  test 'myriad_validation' do
    assert @m1.valid?, 'Myriad should be valid'
  end
  test 'no_name_myriad_validation' do
    @m1.update(name: ' ')
    assert_not @m1.valid?, 'Myriad with blank name should be invalid'
    @m1.update(name: 'Sh')
    assert_not @m1.valid?, 'Myriad with short name should be invalid'
  end
end
