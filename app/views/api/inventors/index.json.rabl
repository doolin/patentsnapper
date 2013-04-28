object @inventors
attributes :id,
           :patent,
           :firstname,
           :lastname,
           :street,
           :city,
           :state,
           :zipcode,
           :country,
           :nationality,
           :invseq

#node(:total) { |m| @inventors.total_entries }
#node(:total_pages) { |m| (@inventors.total_entries.to_f/@inventors.per_page).ceil }
#node(:page_num) { |m| @inventors.current_page }
