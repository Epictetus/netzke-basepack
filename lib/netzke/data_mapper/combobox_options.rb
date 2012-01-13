module Netzke
  module DataMapper
    module ComboboxOptions
      # module ClassMethods
        def netzke_combo_options_for(column, query = "")
          records = query.empty? ? find_by_sql("select distinct #{column} from #{table_name}") : find_by_sql("select distinct #{column} from #{table_name} where #{column} like '#{query}%'")
          records.map{|r| r.send(column)}
        end
      # end

      # def self.included(receiver)
        # receiver.extend         ClassMethods
      # end
    end
  end
end
