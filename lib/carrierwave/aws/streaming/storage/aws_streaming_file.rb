module CarrierWave
  module Storage
    class AWSStreamingFile < AWSFile
      def store(new_file)
        options = aws_options.write_options(new_file)
        options.delete(:body)
        !!file.upload_file(new_file.to_file, options)
      end

    end
  end
end