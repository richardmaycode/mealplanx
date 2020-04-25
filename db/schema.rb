# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_25_023522) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cuisines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "day_blocks", force: :cascade do |t|
    t.date "scheduled"
    t.string "day"
    t.bigint "week_block_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["week_block_id"], name: "index_day_blocks_on_week_block_id"
  end

  create_table "day_blocks_meals", id: false, force: :cascade do |t|
    t.bigint "meal_id"
    t.bigint "day_block_id"
    t.index ["day_block_id"], name: "index_day_blocks_meals_on_day_block_id"
    t.index ["meal_id"], name: "index_day_blocks_meals_on_meal_id"
  end

  create_table "favorite_recipes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id"], name: "index_favorite_recipes_on_recipe_id"
    t.index ["user_id"], name: "index_favorite_recipes_on_user_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.float "amount"
    t.string "measure"
    t.bigint "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id"], name: "index_ingredients_on_recipe_id"
  end

  create_table "instructions", force: :cascade do |t|
    t.string "detail"
    t.integer "step"
    t.bigint "recipe_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id"], name: "index_instructions_on_recipe_id"
  end

  create_table "meals", force: :cascade do |t|
    t.string "name"
  end

  create_table "plans", force: :cascade do |t|
    t.bigint "meal_id"
    t.bigint "recipe_id", null: false
    t.bigint "day_block_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["day_block_id"], name: "index_plans_on_day_block_id"
    t.index ["meal_id"], name: "index_plans_on_meal_id"
    t.index ["recipe_id"], name: "index_plans_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "base"
    t.integer "meal"
    t.integer "cooking_length"
    t.integer "servings"
    t.boolean "baby_friendly"
    t.date "last_used"
    t.bigint "cuisine_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cuisine_id"], name: "index_recipes_on_cuisine_id"
  end

  create_table "recipes_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id"], name: "index_recipes_users_on_recipe_id"
    t.index ["user_id"], name: "index_recipes_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.integer "last_meal"
    t.integer "servings_needed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "week_blocks", force: :cascade do |t|
    t.date "week_start"
    t.date "week_end"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "day_blocks", "week_blocks"
  add_foreign_key "favorite_recipes", "recipes"
  add_foreign_key "favorite_recipes", "users"
  add_foreign_key "ingredients", "recipes"
  add_foreign_key "plans", "day_blocks"
  add_foreign_key "plans", "recipes"
  add_foreign_key "recipes_users", "recipes"
  add_foreign_key "recipes_users", "users"
end
