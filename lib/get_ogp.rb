#  Copyright (c) 2009 Intridea, Inc. and Michael Bleigh
#  Released under the MIT license
#  https://github.com/mobomo/opengraph/blob/master/LICENSE

require 'nokogiri'
require 'faraday'

module GetOgp
  def self.get_data(url)
    response = Faraday.get(url)
    html = Nokogiri::HTML.parse(response.body)
    ogp_date = {}
    html.css('meta').each do |meta|
      if (meta.attribute('property') && meta.attribute('property').to_s.match(/^og:(.+)$/i)) || (meta.attribute('name') && meta.attribute('name').to_s.match(/^og:(.+)$/i))
        ogp_date[$1] = meta.attribute('content').to_s
      end
    end

    ogp_date['title'] = html.css('title')&.text unless ogp_date.has_key?('title')
    return false if ogp_date.keys.empty?
    ogp_date
  rescue => e
    p e
    false
  end
end
