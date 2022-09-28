# frozen_string_literal: true
require 'uri'

# BEGIN
class Url
  include Comparable
  extend Forwardable

  attr_reader :url, :query_params

  def_delegator :@url, :scheme, :scheme
  def_delegator :@url, :host, :host
  def_delegator :@url, :to_s, :to_s

  def initialize(params)
    @url = URI(params)

    @query_params = (url.query || '').split('&').each_with_object({}) do |item, acc|
      acc[item.split('=')[0].to_sym] = item.split('=')[1]
    end
  end

  def query_param(key, default = nil)
    query_params.fetch(key, default)
  end

  def ==(other)
    to_s == other.to_s
  end
end
# END
