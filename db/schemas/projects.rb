create_table :projects, id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin" do |t|
  t.string :sid, null: false, limit: 32
  t.string :name, null: false

  t.timestamps null: false
  t.index [:sid]
end
