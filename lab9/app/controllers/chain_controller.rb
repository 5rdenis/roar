class ChainController < ApplicationController
  def input
  end

  def initial(arr)
    arr.map{|e| e}
  end

  def get_sequences(a)
    reta = []
    last_block = a.each_cons(2).inject([]) do |ar, x|
      ar << x[0]
      if x[0] >= x[1]
        reta << ar
        []
      else
        ar
      end
    end << a.last
    reta << last_block
  end


  def view
    @res = true
    n = params[:n].split.map{|e| e.to_i}
    if n.count < 10 
      @res = false
    else 
      @initial = initial(n)
      @alls = get_sequences(n).reject { |c| c.length<=1}
      @result = get_sequences(n).reject { |c| c.length<=1}.max_by {|e| e.length}
    end
    respond_to do |format|
      format.html
      format.json do
        render json:
          { type: @res, value1: @initial , value2: @alls , value3: @result}
      end
    end
  end
end