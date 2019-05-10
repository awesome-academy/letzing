class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.human_enum_name enum_name, enum_value
    enum_tos = enum_name.to_s.pluralize
    model_key = model_name.i18n_key
    I18n.t("activerecord.attributes.#{model_key}.#{enum_tos}.#{enum_value}")
  end
end
