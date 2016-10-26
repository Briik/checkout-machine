require 'minitest/autorun'
require_relative 'checkout_machine'

class CheckoutMachineTest < Minitest::Test
  def setup
    @cm = CheckoutMachine.new
  end

  def test_scan_chips_expects_total_200
    # Arrange

    # Act
    @cm.scan(123)

    # Assert
    assert_equal 200, @cm.total
  end

  def test_scan_salsa_expects_total_100
    # Arrange

    # Act
    @cm.scan(456)

    # Assert
    assert_equal 100, @cm.total
  end

  def test_scan_wine_expects_total_1000
    # Arrange

    # Act
    @cm.scan(789)

    # Assert
    assert_equal 1000, @cm.total
  end

  def test_scan_cigarettes_expects_total_500
    # Arrange

    # Act
    @cm.scan(111)

    # Assert
    assert_equal 500, @cm.total
  end

  def test_scan_all_products_expects_total_1800
    # Arrange

    # Act
    @cm.scan(123)
    @cm.scan(456)
    @cm.scan(789)
    @cm.scan(111)

     # Assert
    assert_equal 1800, @cm.total
  end

  def test_scan_chips_with_bonus_card_expect_200
    # Arrange
    @cm.scan(123) # chips

    # Act
    @cm.scan(000)


    # Assert
    assert_equal 200, @cm.total
  end
end
