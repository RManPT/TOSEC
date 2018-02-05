# Paperclip::Attachment.default_options[:validate_media_type] = false

Paperclip.options[:content_type_mappings] = {
    dat: ['text/html','text/xml', 'application/xml']
  }