module BidRecordsHelper
	def cache_key_for_record_for_profile(bid_record)
    "record-#{bid_record.id}-for-profile"
  end
end
