require './lib/customer.rb'

describe Customer do
  let(:customer) { Customer.new(order_double_class) }
  let(:order_double_class) { double(:order_double_class, :new => order) }
  let(:order) { double(:order) }

  # context '#view_dishes' do
    it 'displays the list of prices of dishes' do
      expect(order).to receive(:view_dishes)
      customer.view_dishes
    end
end
