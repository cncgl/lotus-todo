Lotus::Model.migration do
  change do
    create_table :todos do
      primary_key :id
      column :status, Integer,  null: false
      column :title,  String,   null: false
    end
  end
end
