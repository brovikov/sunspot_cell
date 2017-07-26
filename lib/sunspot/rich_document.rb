module Sunspot

  class RichDocument < RSolr::Xml::Document

    def contains_attachment?
      @fields.each do |field|
        if field.name.to_s.include?("_attachment") && field.value.present?
          return true
        end
      end
      return false
    end

    def add(connection)
      params = {
        :wt => :ruby
      }

      data = nil

      @fields.each do |f|
        if f.name.to_s.include?("_attachment") and f.value.present?
          params['fmap.content'] = f.name
          if f.value.is_a?(Hash)
            params['stream.url']         = f.value[:file]
            params['stream.contentType'] = f.value[:type]
          else
            data = open(f.value).read rescue ""
          end
        else
          param_name = "literal.#{f.name.to_s}"
          params[param_name] = [] unless params.has_key?(param_name)
          params[param_name] << f.value
        end
        if f.attrs[:boost]
          params["boost.#{f.name.to_s}"] = f.attrs[:boost]
        end
      end

      connection.send_and_receive('update/extract', 
        { :method => :post, 
          :params => params, 
          :data => data, 
          :headers => {"Content-Type" => ""}
        })
    end
  end
end