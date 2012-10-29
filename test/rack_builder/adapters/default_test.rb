require File.expand_path('../../../integration_helper', __FILE__)

module RackBuilderAdapters
  class DefaultTest < Faraday::TestCase

    def adapter() :default end

    Faraday::Integration.apply(self, :NonParallel) do
      # default stack is not configured with Multipart
      undef :test_POST_sends_files
    end

    alias build_connection rack_builder_connection
  end
end
