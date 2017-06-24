ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation,:first_name, :trade_access


  index do
    selectable_column
    id_column
    column :first_name

    column :about_yourself
    column :weekness_and_reason_to_hire
    column :forex_meaning_foreign_exchange_move
    column :central_banks_in_foreign_exchange_rates
    column :what_you_do_if_endup_day_by_5_percent_loss
    column :money_and_risk_management
    column :phycology_in_forex
    column :explanation_of_technical_analysis
    column :trading_forex_maning
    column :risky_of_forex_trading
    column :how_i_manage_risk
    column :kind_of_forex_trading_i_use

    column :trade_access
    actions
  end

  filter :first_name
  filter :trade_access

  form do |f|
    f.inputs "Admin Details" do
      f.input :first_name
      f.input :trade_access
    end
    f.actions
  end

end
