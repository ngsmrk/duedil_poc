# SwaggerClient::CompanyFinancialsFinancials

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accounts_date** | **Date** |  | 
**reporting_period** | **Integer** |  | 
**currency** | **String** |  | 
**consolidated_accounts** | **BOOLEAN** |  | 
**audit_qualification** | **String** |  | 
**number_of_employees** | **Object** |  | 
**turnover** | **Object** | Revenue generated from business activities | 
**cost_of_sales** | **Object** | Direct costs to the business of generating the Turnover | 
**sga_plus_other_net_costs** | **Object** | Selling, general, administrative and other non-production costs of operating the business | 
**operating_profit** | **Object** | Profit generated from principal trading activities, calculated by subtracting operating expenses from Gross Profit | 
**interest_receivable** | **Object** |  | 
**interest_payable** | **Object** |  | 
**pre_tax_profit** | **Object** | Profit generated before taxation | 
**taxation** | **Object** | A negative number indicates a tax charge to the business | 
**post_tax_profit** | **Object** | Profit generated after taxation | 
**dividends_payable** | **Object** | Profit distributed to shareholders | 
**retained_profits** | **Object** | Undistributed profits retained within the business | 
**intangible_assets** | **Object** | A company&#39;s fixed assets that have no physical presence, such as copyrights, patents, and brand names | 
**tangible_assets** | **Object** | A company&#39;s fixed assets that have a physical presence, such as property and machinery | 
**investments_and_other_assets** | **Object** | Investment and other assets held by a company | 
**fixed_assets** | **Object** | The sum of Tangible Assets, Intangible Assets and Investments | 
**stock** | **Object** | Goods for resale | 
**trade_debtors** | **Object** | Amounts owed by customers | 
**other_debtors** | **Object** | Amounts owed by other sources | 
**miscellaneous_current_assets** | **Object** | Unspecified assets due within one year of the accounts date | 
**cash** | **Object** | Cash in hand and in the bank | 
**current_assets** | **Object** | The sum of Stock, Trade Debtors, Cash and other assets due within one year of the accounts date | 
**total_assets** | **Object** | The value of all assets on the Balance Sheet | 
**bank_loans_and_overdrafts** | **Object** |  | 
**trade_creditors** | **Object** | Amounts owed to suppliers | 
**miscellaneous_current_liabilities** | **Object** | Unspecified liabilities due within one year of accounts date | 
**other_short_term_finances** | **Object** | Amounts owed to other sources | 
**current_liabilities** | **Object** | The sum of Trade Creditors and other liabilities due within one year of accounts date | 
**contingent_liabilities** | **Object** | A potential obligation dependent on the outcome of a future event | 
**other_long_term_finances** | **Object** |  | 
**total_long_term_liabilities** | **Object** | The sum of liabilities due after one year of the accounts date | 
**total_liabilities** | **Object** | The total value of all amounts owed (long term and short term) | 
**net_assets** | **Object** | Total Assets less Total Liabilities | 
**equity_paid_up** | **Object** | The amount of capital that has been funded by shareholders | 
**revaluation_reserve** | **Object** | Used when the value of an asset becomes greater than the value at which it was previously carried on the balance sheet | 
**sundry_reserves** | **Object** | Capital reservers, Share premium account, and other company reserves | 
**profit_and_loss_account_reserve** | **Object** | The (fully distributable) balance of retained earnings to carry forward | 
**shareholder_funds** | **Object** | Equity Payed Up plus reservers; equivalent to Net Assets | 
**depreciation** | **Object** | The cost associated with reducing the value of tangible fixed assets over their useful life | 
**amortisation_of_intangibles** | **Object** | The cost associated with reducing the value of intangible fixed assets over their useful life | 
**ebitda** | **Object** | Earnings before interest, tax, depreciation and amortization | 
**working_capital** | **Object** | Current Assets less Current Liabilities | 
**capital_employed** | **Object** | Total Assets less Current Liabilities; equivalent to Fixed Assets plus Working Capital | 
**wages_and_salaries** | **Object** |  | 
**directors_emoluments** | **Object** |  | 
**audit_fees** | **Object** |  | 
**bank_overdraft_and_long_term_loans** | **Object** |  | 
**net_cash_flow_from_operations** | **Object** |  | 
**net_cash_flow_before_financing** | **Object** |  | 
**net_cash_flow_from_financing** | **Object** |  | 
**increase_in_cash** | **Object** |  | 
**debtor_days** | **Object** | Trade Debtors expressed as number of days of Turnover | 
**exports** | **Object** | Turnover from overseas (often reported in the notes to the financial accounts) | 
**gross_margin_percentage** | [**CompanyFinancialsGrossMarginPercentage**](CompanyFinancialsGrossMarginPercentage.md) |  | 
**operating_profit_margin_percentage** | [**CompanyFinancialsOperatingProfitMarginPercentage**](CompanyFinancialsOperatingProfitMarginPercentage.md) |  | 
**ebitda_margin_percentage** | [**CompanyFinancialsEbitdaMarginPercentage**](CompanyFinancialsEbitdaMarginPercentage.md) |  | 
**pre_tax_profit_margin_percentage** | [**CompanyFinancialsPreTaxProfitMarginPercentage**](CompanyFinancialsPreTaxProfitMarginPercentage.md) |  | 
**net_margin_percentage** | [**CompanyFinancialsNetMarginPercentage**](CompanyFinancialsNetMarginPercentage.md) |  | 
**return_on_assets_percentage** | [**CompanyFinancialsReturnOnAssetsPercentage**](CompanyFinancialsReturnOnAssetsPercentage.md) |  | 
**return_on_capital_employed_percentage** | [**CompanyFinancialsReturnOnCapitalEmployedPercentage**](CompanyFinancialsReturnOnCapitalEmployedPercentage.md) |  | 
**return_on_equity** | [**CompanyFinancialsReturnOnEquity**](CompanyFinancialsReturnOnEquity.md) |  | 
**current_ratio** | [**CompanyFinancialsCurrentRatio**](CompanyFinancialsCurrentRatio.md) |  | 
**cash_to_current_liabilities_ratio** | [**CompanyFinancialsCashToCurrentLiabilitiesRatio**](CompanyFinancialsCashToCurrentLiabilitiesRatio.md) |  | 
**cash_to_total_assets_percentage** | [**CompanyFinancialsCashToTotalAssetsPercentage**](CompanyFinancialsCashToTotalAssetsPercentage.md) |  | 
**liquidity_ratio** | [**CompanyFinancialsLiquidityRatio**](CompanyFinancialsLiquidityRatio.md) |  | 
**gearing_percentage_on_liability_basis** | [**CompanyFinancialsGearingPercentageOnLiabilityBasis**](CompanyFinancialsGearingPercentageOnLiabilityBasis.md) |  | 
**gearing_percentage_on_gross_debt_basis** | [**CompanyFinancialsGearingPercentageOnGrossDebtBasis**](CompanyFinancialsGearingPercentageOnGrossDebtBasis.md) |  | 
**gearing_percentage_on_net_debt_basis** | [**CompanyFinancialsGearingPercentageOnNetDebtBasis**](CompanyFinancialsGearingPercentageOnNetDebtBasis.md) |  | 
**debt_to_capital_percentage** | [**CompanyFinancialsDebtToCapitalPercentage**](CompanyFinancialsDebtToCapitalPercentage.md) |  | 
**inventory_turnover_ratio** | [**CompanyFinancialsInventoryTurnoverRatio**](CompanyFinancialsInventoryTurnoverRatio.md) |  | 
**cash_to_turnover_ratio** | [**CompanyFinancialsCashToTurnoverRatio**](CompanyFinancialsCashToTurnoverRatio.md) |  | [optional] 
**cash_to_turnover_percentage** | [**CompanyFinancialsCashToTurnoverPercentage**](CompanyFinancialsCashToTurnoverPercentage.md) |  | 
**days_inventory_outstanding** | [**CompanyFinancialsDaysInventoryOutstanding**](CompanyFinancialsDaysInventoryOutstanding.md) |  | 
**days_sales_outstanding** | [**CompanyFinancialsDaysSalesOutstanding**](CompanyFinancialsDaysSalesOutstanding.md) |  | 
**days_payable_outstanding** | [**CompanyFinancialsDaysPayableOutstanding**](CompanyFinancialsDaysPayableOutstanding.md) |  | 
**cash_conversion_cycle** | [**CompanyFinancialsCashConversionCycle**](CompanyFinancialsCashConversionCycle.md) |  | 
**revenue_per_employee** | [**CompanyFinancialsRevenuePerEmployee**](CompanyFinancialsRevenuePerEmployee.md) |  | 
**human_capital_value_added** | [**CompanyFinancialsHumanCapitalValueAdded**](CompanyFinancialsHumanCapitalValueAdded.md) |  | 
**interest_coverage_ratio** | [**CompanyFinancialsInterestCoverageRatio**](CompanyFinancialsInterestCoverageRatio.md) |  | 
**net_debt_to_ebitda_ratio** | [**CompanyFinancialsNetDebtToEBITDARatio**](CompanyFinancialsNetDebtToEBITDARatio.md) |  | 
**cfo_to_sales_ratio** | [**CompanyFinancialsCfoToSalesRatio**](CompanyFinancialsCfoToSalesRatio.md) |  | 
**auditor** | [**CompanyFinancialsAuditor**](CompanyFinancialsAuditor.md) |  | 
**joint_auditor** | [**CompanyFinancialsAuditor**](CompanyFinancialsAuditor.md) |  | 
**solicitor** | [**CompanyFinancialsAuditor**](CompanyFinancialsAuditor.md) |  | 
**accountant** | [**CompanyFinancialsAuditor**](CompanyFinancialsAuditor.md) |  | 


