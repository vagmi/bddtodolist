class BucketsController < ApplicationController
  def index
    @buckets = Bucket.all
    respond_to do |format|
      format.html
      format.json { 
        render :json=>@buckets.to_json 
        }
    end
  end
end
