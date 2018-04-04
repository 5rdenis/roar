class ChainController < ApplicationController
  before_action :parse_params, only: :view
  def input
  end

  def all_records
    @res = Chain.all
    render xml: @res.map(&:transform_data)
  end

  def view
    if (rec = Chain.find_by(initial: @n))
      @res = ActiveSupport::JSON.decode(rec.result)
      logger.debug 'found'
    else
      logger.debug 'not found, calculating and adding data to db'
      calculate
      add_record
    end
  end

  private 

  def add_record
    Chain.create(initial: @n ,all: @alls, result: @res)
  end

  def parse_params
    @n = params[:n].split.map{|e| e.to_i}
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

  def calculate
  	if @n.count < 10 
  		@res = 'Invalid array'
  	else 
      @initial = initial(@n)
      @alls = get_sequences(@n).reject { |c| c.length<=1}
      @res = get_sequences(@n).max_by {|e| e.length}
  	end
  end
end
