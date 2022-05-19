require './solver'

RSpec.describe Solver do
  before :each do
    @solver = Solver.new
  end
  it '@solver should be an instance of Solver' do
    expect(@solver).to be_an_instance_of(Solver)
  end

  describe 'Factorial'
  it 'returns the factorial of 3' do
    n = 3
    ans = @solver.factorial(n)
    expected(ans).to be eq(6)
  end

  it 'returns the factorial of 10' do
    n = 10
    ans = @solver.factorial(n)
    expected(ans).to be eq(3_628_800)
  end

  it 'receives an float number and raises and argument error' do
    n = 2.5
    expect { @solver.factorial(n) }.to raise_error(ArgumentError)
  end

  it 'receives an string and raises and argument error' do
    n = 'str'
    expect { @solver.factorial(n) }.to raise_error(ArgumentError)
  end

  it 'receives zero arguments and raises an argument error' do
    expect { @solver.factorial }.to raise_error(ArgumentError)
  end

  it 'receives wrong number of arguments and raises an argument error' do
    n = 3
    m = 5
    expect { @solver.factorial(n, m) }.to raise_error(ArgumentError)
  end

  it ' receives a negative integer and raises an error' do
    n = -3
    expect { @solver.factorial(n) }.to raise_error(ArgumentError)
  end

  it 'receives zero and returns 1' do
    n = 0
    ans = @solver.factorial(n)
    expected(ans).to be eq(1)
  end
end