require "json"

module JsonDataInitializable
  extend ActiveSupport::Concern

  class_methods do
    def json_path(path)
      @_json_path = path
    end
  end

  included do
    attr_accessor :json_data

    before_action do
      @_json_path ||= JsonDataInitializable.default_json_name_for_klass(self.class)
      file = File.read Rails.root.join(@_json_path)
      @json_data = JSON.parse file
    end
  end

  def self.default_json_name_for_klass(klass)
    controller_name = klass.to_s.titleize.split.first.downcase
    File.join("app", "json_data", controller_name + ".json")
  end
end
