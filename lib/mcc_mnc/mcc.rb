module MCC_MNC
  class MCC
    attr_reader :mcc, :cc

    def initialize(mcc, cc)
      @mcc, @cc = mcc, cc
    end

    def self.find(mcc)
      @mcc_cc ||= YAML.load(File.read(File.join(File.expand_path(File.dirname(__FILE__)), '..', '..', 'data', 'mnc_cc.yaml')))
      cc = @mcc_cc[Integer("#{mcc}", 10)]
      new(mcc, cc)
    end

    def inspect
      "<MCC mcc: #{mcc.inspect}, cc: #{cc.inspect}>"
    end

  end
end
