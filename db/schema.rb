# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150525224029) do

  create_table "accountants", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.string   "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "airconditioners", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.string   "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "arquitects", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.string   "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "asphalts", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.string   "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "cashbuyers", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "commercialpropertiesforsales", force: true do |t|
    t.string   "mls_number"
    t.string   "property_type"
    t.string   "action"
    t.text     "address"
    t.integer  "zipcode"
    t.string   "city"
    t.decimal  "price"
    t.string   "realestatecompany"
    t.string   "officephone"
    t.string   "companywebsite"
    t.string   "listingagent"
    t.string   "emailagent"
    t.string   "agentphone"
    t.string   "assetclass"
    t.integer  "totalbuildingSF"
    t.integer  "totalunits"
    t.string   "cap_rate"
    t.integer  "floorsnumber"
    t.string   "construction_type"
    t.text     "property_description"
    t.integer  "parking_total"
    t.string   "elevators"
    t.integer  "individual_suiteSQF"
    t.integer  "year_completed"
    t.integer  "lotsqft"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
    t.string   "floridarea"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "user_id"
  end

  create_table "countertops", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.string   "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "customcabinets", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "drywalls", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "floorings", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "framings", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "generalcontractors", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.string   "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "hardmoneys", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "homeinspectors", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "insulations", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "interiordesigners", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "landscapings", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "landsurveyors", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.string   "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "lawyers", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.string   "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "molds", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "mortgages", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "movingcompanies", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "orders", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "company_name"
    t.text     "street_address"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.string   "phone_number"
    t.string   "email"
    t.string   "company_service"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "subscriptionpackage_id"
    t.integer  "buyer_id"
    t.integer  "seller_id"
  end

  create_table "paintings", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "pictures", force: true do |t|
    t.integer  "residential_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "plans", force: true do |t|
    t.string   "name"
    t.decimal  "price"
    t.string   "interval"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plumbings", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "poolcleaners", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "poolrepairs", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "privatebanks", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.string   "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "privatefirms", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "propertymanagementfirms", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "real_estatefirms", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "realtors", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.string   "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "rentalproperties", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "residentials", force: true do |t|
    t.string   "mls_number"
    t.string   "action"
    t.text     "address"
    t.string   "property_type"
    t.integer  "bedrooms"
    t.integer  "full_bathrooms"
    t.integer  "half_bathrooms"
    t.integer  "square_feet"
    t.decimal  "price"
    t.string   "zip_code"
    t.integer  "lot_size"
    t.integer  "garage"
    t.string   "construction_type"
    t.integer  "stories"
    t.integer  "year_built"
    t.string   "private_pool"
    t.string   "area_tennis"
    t.string   "wheelchair"
    t.string   "elevator"
    t.string   "patio_deck"
    t.string   "energy_features"
    t.string   "green_certification"
    t.string   "golf_course"
    t.string   "water_view"
    t.string   "water_front"
    t.string   "foreclosure"
    t.string   "status"
    t.string   "city"
    t.string   "florida_mlsarea"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "realorlicense"
    t.string   "realtorname"
    t.string   "realtorphonenumber"
    t.string   "realtoremail"
    t.text     "additionalfeatures"
    t.string   "maintenancefee"
    t.string   "keymap"
    t.integer  "user_id"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roofings", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "securities", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "septics", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "service_types", force: true do |t|
    t.string   "service_type"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", force: true do |t|
    t.string   "company_name"
    t.string   "service_type"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.string   "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "user_id"
    t.integer  "servicetype_id"
  end

  create_table "solarscreens", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "stagings", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "subscriptionpackages", force: true do |t|
    t.string   "package_title"
    t.string   "package_name"
    t.text     "package_description"
    t.string   "price"
    t.text     "features_include"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "user_id"
    t.decimal  "price1"
  end

  create_table "subscriptions", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "stripe_customer_token"
    t.integer  "plan_id"
    t.string   "name"
    t.string   "company_name"
    t.string   "website"
    t.text     "address"
    t.integer  "zipcode"
    t.string   "city"
    t.string   "phone"
    t.string   "contact"
    t.string   "company_email"
    t.string   "card_name"
    t.text     "bill_address"
    t.string   "sellerid"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "description"
  end

  create_table "taxspecialists", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "termiteinspectors", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "titlecompanies", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "recipient"
    t.integer  "role"
    t.boolean  "isRealtor"
    t.string   "licenseId"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "windows", force: true do |t|
    t.string   "company_name"
    t.text     "company_description"
    t.text     "address"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "contact_name"
    t.string   "company_website"
    t.string   "company_phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

end
