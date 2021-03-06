require_relative "../../shared/models/build"
require_relative "../../shared/json_convertible"

module FastlaneCI
  # View model to expose the basic info about a build.
  class BuildSummaryViewModel
    include FastlaneCI::JSONConvertible

    # @return [Integer]
    attr_accessor :number

    # @return [String]
    attr_reader :status

    # @return [Integer]
    attr_reader :duration

    # @return [String] The git sha of the commit this build was run for
    attr_reader :sha

    # @return [DateTime] Start time
    attr_reader :timestamp

    def initialize(build:)
      raise "Incorrect object type. Expected Build, got #{build.class}" unless build.kind_of?(Build)

      @number = build.number
      @status = build.status
      @duration = build.duration
      @sha = build.sha
      @timestamp = build.timestamp
    end
  end
end
