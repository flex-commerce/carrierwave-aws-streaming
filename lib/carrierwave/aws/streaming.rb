require 'carrierwave'
require "carrierwave/aws/streaming/version"
require 'carrierwave/aws/streaming/storage/aws_streaming'
require 'carrierwave/aws/streaming/storage/aws_streaming_file'

CarrierWave::Uploader::Base.configure do |config|
  config.storage_engines[:aws_streaming] = 'CarrierWave::Storage::AWSStreaming'
end

module Carrierwave
  module Aws
    module Streaming
      # Your code goes here...
    end
  end
end
