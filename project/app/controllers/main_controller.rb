    require 'open-uri'
    require 'openssl'




    class MainController < ApplicationController


      def show

        @names = ["Ars Technica", "Engadget", "Hacker News"]
        @sourses=["ars-technica", "engadget", "hacker-news"]

        @page = params[:page] || 1
        @from = params[:from]
        @subed=[nil,nil,nil]
        if signed_in? then
          @subed = JSON.parse(current_user.subs) if current_user.subs !=""
        end
        return if (@subed == [nil,nil,nil]) & signed_in?
        url = 'https://newsapi.org/v2/everything?'\
          'sources=' + (@from || (@sourses.select.with_index { |s,i| s if (!signed_in? || @subed[i]) }.join(',')) ) +
          '&sortBy=publishedAt&language=en&'\
          'page='+ (@page || 1).to_s +        
          '&apiKey=886949ad76d84d48a91a22887361148a'


        req = open(url)
        @response1 = JSON.parse(req.read)
     end

     def profile
      @names = ["Ars Technica", "Engadget", "Hacker News"]
      @sourses=["ars-technica", "engadget", "hacker-news"]
      @subed=[nil,nil,nil]
      if signed_in? then
          @subed = JSON.parse(current_user.subs) if current_user.subs !=""
      end
      @profout = @names.select.with_index { |s,i| s if (!signed_in? || @subed[i]) }.join(', ')
     
    end

    def settings
      @names = ["Ars Technica", "Engadget", "Hacker News"]
      @sourses=["ars-technica", "engadget", "hacker-news"]
    end

    def save
      arr = []
      arr << params[:ars] << params[:eng] << params[:hack]
        #current_user.subs = JSON.generate(arr.map.with_index { |flag,i|  @sourses[i] if flag })
        current_user.subs = JSON.generate(arr)
        current_user.save!
        redirect_to profile_url
      end
    end
