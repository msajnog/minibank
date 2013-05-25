require 'test_helper'

class ClientTest < ActiveSupport::TestCase

  test "valid" do
    c = Client.new
    assert c.invalid?
  end

  test "name, surname presence" do
    c = Client.new
    c.valid?
    assert c.errors[:name].any?
    assert c.errors[:surname].any?
    c.name = 'Jan'
    c.surname = 'Kowalski'
    c.valid?
    assert c.errors[:name].empty?
    assert c.errors[:surname].empty?
  end

  test "to_s" do
    c = Client.create(name: 'Jan',
                      surname: 'Nowak',
                      email: 'jan@wp.pl',
                      phone: '234-234-234')
    assert_match /Jan Nowak \(\d+\)/, c.to_s
  end

end
