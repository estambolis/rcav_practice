class CalculationsController < ApplicationController
  def instructions
  end

  def square
  number = params[:number].to_f
  @squared = number**2
  end


  def sqrt
  number = params[:number].to_f
  @sqrt = Math.sqrt(number).round(2)

  render('square_root')
  end

  def pmt
  int = params[:interest].to_f/10000
  pmt = params[:payment_count].to_f
  princ = params[:principal].to_f

  numerator = int*princ
  denominator = 1-(1+int)**(-pmt)
  @pmt = "-$#{(numerator/denominator).round(2)}"

  render('payment')


  end
end
