class Sucker
  def initialize(keywords)
    @keywords = keywords
  end

  def last_tweet
    client.search("#{@keywords} -rt", count: 1, lang: 'en', result_type: 'recent').first
  end

private

  def client
    @client ||= Twitter::REST::Client.new do |config|
      TWITTER_CONFIG.each do |key, value|
        config.send "#{key}=", value
      end
    end
  end

end
