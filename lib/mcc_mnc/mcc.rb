module MCC_MNC
  class MCC
    attr_reader :mcc, :cc

    def initialize(mcc, cc)
      @mcc, @cc = mcc, cc
    end

    def self.find(mcc)
      @mcc_cc ||= YAML.load(File.read('data/mnc_cc.yaml'))
      cc = @mcc_cc[Integer("#{mcc}", 10)]
      new(mcc, cc)
    end

    def inspect
      "<MCC mcc: #{mcc}, cc: #{cc}>"
    end

  end
end
