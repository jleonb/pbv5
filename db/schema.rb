ActiveRecord::Schema.define(version: 20160629212305) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.integer  "sign_in_count",      default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",    default: 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "c_bells", force: :cascade do |t|
    t.string   "img"
    t.string   "link"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
  end

  create_table "c_dentals", force: :cascade do |t|
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "img"
    t.string   "link"
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
  end

  create_table "c_depos", force: :cascade do |t|
    t.string   "img"
    t.string   "link"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
  end

  create_table "c_resta", force: :cascade do |t|
    t.string   "img"
    t.string   "link"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
  end

  create_table "c_restaurants", force: :cascade do |t|
    t.string   "img"
    t.string   "link"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
  end

  create_table "c_servs", force: :cascade do |t|
    t.string   "img"
    t.string   "link"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
  end

  create_table "estandar_destacados", force: :cascade do |t|
    t.string   "img"
    t.string   "link"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
  end

  create_table "estandars", force: :cascade do |t|
    t.string   "n_contrato"
    t.string   "categoria"
    t.string   "caluga"
    t.string   "nombre"
    t.string   "descripcion"
    t.string   "img1"
    t.string   "img2"
    t.string   "img3"
    t.string   "img4"
    t.string   "img5"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "correo"
    t.string   "mapa"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "instagram"
    t.string   "contacto"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "caluga_file_name"
    t.string   "caluga_content_type"
    t.integer  "caluga_file_size"
    t.datetime "caluga_updated_at"
    t.string   "img1_file_name"
    t.string   "img1_content_type"
    t.integer  "img1_file_size"
    t.datetime "img1_updated_at"
    t.string   "img2_file_name"
    t.string   "img2_content_type"
    t.integer  "img2_file_size"
    t.datetime "img2_updated_at"
    t.string   "img3_file_name"
    t.string   "img3_content_type"
    t.integer  "img3_file_size"
    t.datetime "img3_updated_at"
    t.string   "img4_file_name"
    t.string   "img4_content_type"
    t.integer  "img4_file_size"
    t.datetime "img4_updated_at"
    t.string   "img5_file_name"
    t.string   "img5_content_type"
    t.integer  "img5_file_size"
    t.datetime "img5_updated_at"
    t.string   "web"
  end

  create_table "indices", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inicios", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "institucions", force: :cascade do |t|
    t.string   "n_contrato"
    t.string   "nombre"
    t.string   "rut"
    t.string   "direccion"
    t.string   "comuna"
    t.string   "ciudad"
    t.string   "contacto"
    t.string   "telefono"
    t.string   "email"
    t.string   "logo"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "newsletters", force: :cascade do |t|
    t.string   "institucion_id"
    t.string   "img"
    t.string   "video"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
  end

  create_table "premia", force: :cascade do |t|
    t.string   "n_contrato"
    t.string   "img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "slider_bells", force: :cascade do |t|
    t.string   "img"
    t.string   "link"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
  end

  create_table "slider_categoria", force: :cascade do |t|
    t.string   "img"
    t.string   "link"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "categoria"
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
  end

  create_table "slider_dentals", force: :cascade do |t|
    t.string   "name"
    t.string   "img"
    t.string   "link"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
  end

  create_table "slider_depos", force: :cascade do |t|
    t.string   "img"
    t.string   "link"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
  end

  create_table "slider_resta", force: :cascade do |t|
    t.string   "img"
    t.string   "link"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
  end

  create_table "slider_restaurants", force: :cascade do |t|
    t.string   "img"
    t.string   "link"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
  end

  create_table "slider_servs", force: :cascade do |t|
    t.string   "img"
    t.string   "link"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
  end

  create_table "slider_tops", force: :cascade do |t|
    t.string   "link"
    t.string   "img"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "n_contrato"
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
  end

  create_table "sliders", force: :cascade do |t|
    t.string   "img"
    t.string   "link"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "n_contrato"
    t.string   "rut"
    t.string   "nombre"
    t.string   "a_paterno"
    t.string   "a_materno"
    t.string   "telefono"
    t.string   "sexo"
    t.string   "edad"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "institucion_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vermas", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "views", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "views", ["email"], name: "index_views_on_email", unique: true
  add_index "views", ["reset_password_token"], name: "index_views_on_reset_password_token", unique: true

end
