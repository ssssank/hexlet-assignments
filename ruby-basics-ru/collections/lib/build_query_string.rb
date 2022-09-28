# frozen_string_literal: true

# rubocop:disable Style/For
# BEGIN
def build_query_string(params)
  params.sort.map { |item| "#{item[0]}=#{item[1]}" }.join('&')
end
# END
# rubocop:enable Style/For
