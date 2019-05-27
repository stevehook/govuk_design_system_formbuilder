module GOVUKDesignSystemFormBuilder
  module Inputs
    def govuk_text_field(attribute_name, label: nil, hint: nil, width: 'full')
      content_tag('div', class: 'govuk-form-group') do
        safe_join([
          govuk_label(attribute_name, label),
          hint.presence && govuk_hint(attribute_name, hint),
          tag.input(
            class: 'govuk-input',
            type: 'text',
            name: attribute_identifier(attribute_name),
            aria: {
              describedby: hint.presence && hint_id(attribute_name)
            }
          )
        ])
      end
    end
  end
end
