class XmlController < ApplicationController
	before_action :parse_params, only: :index

	def index
		data = []
    data = if @n.count <10
             { message: "Invalid array"}
    			 else
    			 	 @initial = initial(@n).each_with_index.map { |elem, index| {elem1: elem } }
                     @alls = get_sequences(@n).reject { |c| c.length<=1} .each_with_index.map { |elem, index| {elem2: elem } }
                     @res = get_sequences(@n).max_by {|e| e.length} .each_with_index.map { |elem, index| {elem3: elem } }
                     @all=@initial+@alls+@res
           end
    puts data
    respond_to do |format|
      format.xml { render xml: data.to_xml }
      format.rss { render xml: data.to_xml }
    end
  end

  protected

  def parse_params
    @n = params[:n].split(',').map{|e| e.to_i}
  end

  private

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


  def initial(arr)
    arr.map{|e| e}
  end
end