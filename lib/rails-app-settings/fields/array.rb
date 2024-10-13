module RailsAppSettings
  module Fields
    class Array < ::RailsAppSettings::Fields::Base
      def deserialize(value)
        return nil if value.nil?

        return value unless value.is_a?(::String)

        value.split(separator).reject(&:empty?).map(&:strip)
      end

      def serialize(value)
        deserialize(value)
      end
    end
  end
end
