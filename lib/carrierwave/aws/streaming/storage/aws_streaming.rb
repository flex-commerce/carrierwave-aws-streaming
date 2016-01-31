module CarrierWave
  module Storage
    class AWSStreaming < ::CarrierWave::Storage::AWS
      def store!(file)
        AWSStreamingFile.new(uploader, connection, uploader.store_path).tap do |aws_file|
          aws_file.store(file)
        end
      end

    end
  end
end