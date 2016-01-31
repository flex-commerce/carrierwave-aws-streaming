# Carrierwave::Aws::Streaming

This gem enhances the carrierwave-aws-streaming gem by adding a storage type called :aws_streaming
this allows large files to be processed without them loading into memory.

Without this gem, if you tried to upload a 1 GB file (just to go to extremes here) then the memory usage
of the application would end up going up to about 8GB+ which is obviously not acceptible

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'carrierwave-aws-streaming'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install carrierwave-aws-streaming

## Usage
```ruby
class MyUploader < Carrierwave::Uploader::Base
    storage :aws_streaming
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/carrierwave-aws-streaming.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

