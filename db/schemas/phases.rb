create_table :phases, id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin" do |t|
  t.string :name
  t.datetime :start_at
  t.datetime :end_at

  t.timestamps null: false
  t.index [:end_at, :start_at]
end
