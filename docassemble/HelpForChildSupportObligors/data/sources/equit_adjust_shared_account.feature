Feature: Equity adjustment

@regression @slow @equity_adjustment
Scenario: Equity adjustment with a shared account
  Given I start the interview at "ChildSupportObligors_umbrella.yml"
  And I get to the question id "base yml download screen" with this data:
    | var | value | trigger |
    | intro_screen['i_accept'] | True |  |
    | account_same | True |  |
    | prob_other | how did this get in the interview? I didn't see it before... |  |
    | admin_review_comments | DOR took money out of my bank account.\nDOR took my driver's license.\n\nI cannot afford to leave an abusive relationship.\nI cannot pay for groceries.\nI cannot pick up my child, I cannot get to work so I cannot earn money for basic needs and child support. |  |
    | appointed_guardian | True |  |
    | assigned_amount | 45 |  |
    | your_past_benefits[i].end_date | 03/29/2021 | your_past_benefits['State Veterans Benefits'].still_receiving |
    | your_past_benefits[i].start_date | 04/05/1987 | your_past_benefits['State Veterans Benefits'].still_receiving |
    | your_past_benefits[i].still_receiving | True | your_past_benefits['State Veterans Benefits'].still_receiving |
    | benefits_used | True |  |
    | child_lives_w_obligor | False |  |
    | child_number | 2 |  |
    | client.address.address | 327 Kearsarge Mountain Road |  |
    | client.address.city | Wilmot |  |
    | client.address.state | New Hampshire |  |
    | client.address.zip | 03287 |  |
    | client.birthdate | 09/10/1956 |  |
    | client.cellphone |  |  |
    | client.dl |  |  |
    | client.email | dq43qweqwetqew@gmail.com |  |
    | client.homephone | +1 08572673171 |  |
    | client.name.first | alf |  |
    | client.name.last | lover |  |
    | client.name.middle | the |  |
    | client.ssn | 123-45-6789 |  |
    | client.workphone |  |  |
    | comment_car | I cannot pick up my child, I cannot get to work so I cannot earn money for basic needs and child support. |  |
    | comment_license | Not sure why license appeared here either |  |
    | cs_arrears_catch_up | False |  |
    | cs_arrears_date | 06/07/2020 |  |
    | cs_arrears_mc | Yes |  |
    | disability | I broke my neck |  |
    | disability_mod | False |  |
    | disabled_start | 09/30/2020 |  |
    | disabled_still | True |  |
    | dor_cse_notice_amount | 345 |  |
    | dor_cse_notice_amount_wrong | False |  |
    | dor_cse_notice_arrears | 4567 |  |
    | dor_cse_notice_arrears_wrong | False |  |
    | dor_cse_notice_court | Barnstable Probate and Family Court |  |
    | dor_cse_notice_court_wrong | False |  |
    | dor_cse_notice_frequency | 52 |  |
    | dor_cse_notice_frequency_wrong | False |  |
    | dor_take_ward_money | False |  |
    | dor_took_money_date | 12/24/2020 |  |
    | extra_help_needed['license'] | True |  |
    | guardian_order | True |  |
    | hardships['abuse'] | True |  |
    | hardships['groceries'] | True |  |
    | help_needed['cantafford'] | True |  |
    | important | True |  |
    | is_not_zero | True |  |
    | mod_dis_reason | I hurt too much to do anything |  |
    | notice_date_delinquency | 12/01/2020 |  |
    | other_considerations['disabled'] | True |  |
    | other_need | False |  |
    | other_parent.name.first | Cathy |  |
    | other_parent.name.last | CustodialParent |  |
    | other_parent.name.middle |  |  |
    | other_parent_wrong | False |  |
    | problems['account'] | True |  |
    | problems['driver-license'] | True |  |
    | reconcile | False |  |
    | requirements | True |  |
    | sign_on_device | True |  |
    | signature_date | 03/29/2021 |  |
    | welcome | True |  |
    | your_benefit_list['State Veterans Benefits'] | True |  |
    | your_children_benefit_list['None'] | True |  |
    | ssdi_past | False |  |
    | work_injury | True |  |
    | client.address.type | Rent |  |
    | client.address.month | 0 |  |
    | client.address.years | 2 |  |
    | client.marital_status | Single |  |
    | hasindividual | False |  |
    | total_support | 100 |  |
    | total_support_freq | Weekly |  |
    | client_is_employed | False |  |
    | hasvehicles | False |  |
    | has_safe_deposit_box | No |  |
    | cash_on_hand | 20 |  |
    | hasprop | False |  |
    | hasbank | False |  |
    | hasretirement | False |  |
    | hassecurities | False |  |
    | what_i_have['None'] | True |  |
    | anyone_else_hold_assets | No |  |
    | party_to_lawsuit | No |  |
    | any_insurance_claim | No |  |
    | any_inheritance_likely | No |  |
    | bankruptcy_case_pending | No |  |
    | has_credit_cards | False |  |
    | liability_checklist['None'] | True |  |
    | income_items_list['vet_benefits'] | True |  |
    | vet_benefit_gross | 800 |  |
    | vet_benefit_gross_freq | Monthly |  |
    | vet_state_or_fed | state |  |
    | vet_benefit_source | State Veterans Benefits |  |
    | expense_items_list['rent_mort_exp'] | True |  |
    | rent_mort_exp_gross | 600 |  |
    | rent_mort_exp_gross_freq | Monthly |  |
    | hh_member_contrib_gross_monthly | 0 |  |
    | grocery_exp_base | 200 |  |
    | groceries_exp_gross_freq | Monthly |  |
    | clothing_exp_base | 20 |  |
    | clothing_exp_freq | Monthly |  |
    | children[i].name.first | Casey | children[0].name.first |
    | children[i].name.last | Example | children[0].name.first |
    | children[i].birthdate | 04/04/2004 | children[0].name.first |
    | children[i].live_in | No | children[0].name.first |
    | children[i].name.first | Jordan | children[1].name.first |
    | children[i].name.last | Example | children[1].name.first |
    | children[i].birthdate | 05/05/2006 | children[1].name.first |
    | children[i].live_in | No | children[1].name.first |
    | appointed_conservator | False |  |
    | extra_help_needed['registration'] | False |  |
    | hardships['eviction-facing'] | False |  |
    | hardships['eviction-fear'] | False |  |
    | hardships['fear-utilities'] | False |  |
    | hardships['foreclosure-fear'] | False |  |
    | hardships['lost-utilities'] | False |  |
    | hardships['meds'] | False |  |
    | hardships['mortgage'] | False |  |
    | hardships['other'] | False |  |
    | hardships['rent'] | False |  |
    | hardships['utilities'] | False |  |
    | help_needed['cantsustain'] | False |  |
    | help_needed['disagreement'] | False |  |
    | help_needed['needplan'] | False |  |
    | other_considerations['incarcerated'] | False |  |
    | other_considerations['lost_job'] | False |  |
    | other_considerations['stopped_working'] | False |  |
    | problems['business-license'] | False |  |
    | problems['car-reg'] | False |  |
    | problems['froze-account'] | False |  |
    | problems['garnish'] | False |  |
    | problems['garnish-increase'] | False |  |
    | problems['knewnot'] | False |  |
    | problems['other'] | False |  |
    | problems['professional-license'] | False |  |
    | problems['refund'] | False |  |
    | problems['shared-account'] | False |  |
    | problems['told-boss-garnish-increase'] | False |  |
    | problems['told-me-garnish-increase'] | False |  |
    | problems['too-much'] | False |  |
    | problems['trade-license'] | False |  |
    | rep_payee | False |  |
    | your_benefit_list['EAEDC'] | False |  |
    | your_benefit_list['SSI'] | False |  |
    | your_benefit_list['TAFDC'] | False |  |
    | your_children_benefit_list['EAEDC'] | False |  |
    | your_children_benefit_list['SSI'] | False |  |
    | your_children_benefit_list['TAFDC'] | False |  |
    | signature | /sign |  |
  Then the question id should be "base yml download screen"
