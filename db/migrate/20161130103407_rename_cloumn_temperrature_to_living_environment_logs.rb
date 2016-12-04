class RenameCloumnTemperratureToLivingEnvironmentLogs < ActiveRecord::Migration
  def change
    rename_column :living_environment_logs, :temperrature, :temperature
  end
end
