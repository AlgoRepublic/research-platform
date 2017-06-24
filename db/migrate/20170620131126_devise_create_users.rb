class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :avatar
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :state
      t.string :country
      t.string :pincode
      t.boolean :trade_access, null: false, default: "0"

      t.text :about_yourself
      t.text :weekness_and_reason_to_hire
      t.text :forex_meaning_foreign_exchange_move
      t.text :central_banks_in_foreign_exchange_rates
      t.text :what_you_do_if_endup_day_by_5_percent_loss
      t.text :money_and_risk_management
      t.text :phycology_in_forex
      t.text :explanation_of_technical_analysis
      t.text :trading_forex_maning
      t.text :risky_of_forex_trading
      t.text :how_i_manage_risk
      t.text :kind_of_forex_trading_i_use
      t.text :ict_involved_in_us_doller
      t.text :central_location_of_forex_market
      t.text :explain_money_management
      t.text :mean_by_fundamental_of_forex
      t.text :actions
      t.text :how_to_propose
      t.text :what_is_economics
      t.text :relatinship_with_me
      t.text :educational_background
      t.text :introduce_financial_markets
      t.text :current_trading
      t.text :do_you_speak_english
      t.text :varified_trading_history
      t.text :your_drawdown
      t.text :largest_amount_traded
      t.text :financial_market_learning
      t.text :trade_manager
      t.text :trending_groups
      t.text :signals
      t.text :eas
      t.text :type_of_trade
      t.text :strategy
      t.text :session_trade
      t.text :example_time_to_work_in_team
      t.text :yourself_in_5_years
      t.text :drink_smoke
      t.text :prersonal_rituals
      t.text :remote_or_office




      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
