class EnableStates < ActiveRecord::Migration
  # Enable counties, tracts in Oregon, Washington, Idaho
  execute "UPDATE boundaries SET enabled = true WHERE boundary_type IN ('county', 'census_tract') AND boundary_id REGEXP '^(41|53|16)'"
  # Enable blocks for Lane County Oregon
  execute "UPDATE boundaries SET enabled = true WHERE boundary_type = 'census_block' AND boundary_id REGEXP '^41039'"
  # Washington ZIPs
  execute "UPDATE boundaries SET enabled = true WHERE boundary_type = 'zip_code' AND boundary_id REGEXP '^(980|981|982|983|984|985|986|987|988|989|990|991|992|993|994)'"
  # Oregon ZIPs
  execute "UPDATE boundaries SET enabled = true WHERE boundary_type = 'zip_code' AND boundary_id REGEXP '^97'"
  # Idaho ZIPs
  execute "UPDATE boundaries SET enabled = true WHERE boundary_type = 'zip_code' AND boundary_id REGEXP '^(832|833|834|835|836|837|838|839)'"
end
