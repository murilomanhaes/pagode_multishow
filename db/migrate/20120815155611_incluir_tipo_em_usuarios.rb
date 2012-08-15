class IncluirTipoEmUsuarios < ActiveRecord::Migration
    def up 
    		add_column :usuarios, :tipo, :strong 
  	end 

  	def down 
    		remove_column :usuarios, :tipo 
  	end
end
