Feature: obligor never fell behind

@regression @slow @dont_owe_any
Scenario: guardian, vet benefits, kid w ssi
  Given I start the interview at "ChildSupportObligors_umbrella.yml"
  And I get to the question id "base yml download screen" with this data:
    | var | value | trigger |
    | intro_screen['i_accept'] | True |  |
    | account_same | True |  |
    | appointed_guardian | True |  |
    | assigned_amount | 0 |  |
    | benefits_used | True |  |
    | child_lives_w_obligor | False |  |
    | child_number | 2 |  |
    | client.address.address | 327 Kearsarge Mountain Road |  |
    | client.address.city | Wilmot |  |
    | client.address.state | New Hampshire |  |
    | client.address.zip | 03287 |  |
    | client.cellphone |  |  |
    | client.homephone | +1 08572673171 |  |
    | client.name.first | alf |  |
    | client.name.last | lover |  |
    | client.name.middle | the |  |
    | client.name.suffix |  |  |
    | client.ssn | 123-56-7890 |  |
    | client.workphone |  |  |
    | comment_car | I cannot pick up my children. I cannot get to work so I cannot earn money for basic needs and child support |  |
    | cs_arrears_date | 10/16/2012 |  |
    | cs_arrears_mc | No |  |
    | dor_cse_notice_amount | 456 |  |
    | dor_cse_notice_amount_wrong | False |  |
    | dor_cse_notice_arrears | 5467 |  |
    | dor_cse_notice_arrears_wrong | False |  |
    | dor_cse_notice_court | Norfolk Probate and Family Court |  |
    | dor_cse_notice_court_wrong | False |  |
    | dor_cse_notice_frequency | 52 |  |
    | dor_cse_notice_frequency_wrong | False |  |
    | dor_take_ward_account | True |  |
    | dor_take_ward_money | True |  |
    | dor_took_money_date | 12/12/2020 |  |
    | guardian_order | True |  |
    | hardships['abuse'] | True |  |
    | hardships['groceries'] | True |  |
    | hardships['meds'] | True |  |
    | help_needed['cantafford'] | True |  |
    | help_needed['disagreement'] | True |  |
    | important | True |  |
    | notice_date_delinquency | 11/02/2020 |  |
    | other_parent.name.first | Cathy |  |
    | other_parent.name.last | CustodialParent |  |
    | other_parent.name.middle |  |  |
    | other_parent_wrong | False |  |
    | problems['account'] | True |  |
    | problems['driver-license'] | True |  |
    | problems['knewnot'] | True |  |
    | problems['shared-account'] | True |  |
    | requirements | True |  |
    | sign_on_device | True |  |
    | signature_date | 12/22/2021 |  |
    | welcome | True |  |
    | your_benefit_list['State Veterans Benefits'] | True |  |
    | your_children_benefit_list['SSI'] | True |  |
    | your_children_past_benefits[i].end_date | 12/22/2021 | your_children_past_benefits['SSI'].still_receiving |
    | your_children_past_benefits[i].start_date | 04/04/2004 | your_children_past_benefits['SSI'].still_receiving |
    | your_children_past_benefits[i].still_receiving | True | your_children_past_benefits['SSI'].still_receiving |
    | your_past_benefits[i].end_date | 12/22/2021 | your_past_benefits['State Veterans Benefits'].still_receiving |
    | your_past_benefits[i].start_date | 11/11/1978 | your_past_benefits['State Veterans Benefits'].still_receiving |
    | your_past_benefits[i].still_receiving | True | your_past_benefits['State Veterans Benefits'].still_receiving |
    | client.address.type | Rent |  |
    | client.address.month | 0 |  |
    | client.address.years | 2 |  |
    | reconcile | False |  |
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
    | client.birthdate | 09/10/1956 |  |
    | client.email | alex@example.com |  |
    | client.dl |  |  |
    | children[i].name.first | Casey | children[0].name.first |
    | children[i].name.last | Example | children[0].name.first |
    | children[i].birthdate | 04/04/2004 | children[0].name.first |
    | children[i].live_in | No | children[0].name.first |
    | children[i].name.first | Jordan | children[1].name.first |
    | children[i].name.last | Example | children[1].name.first |
    | children[i].birthdate | 05/05/2006 | children[1].name.first |
    | children[i].live_in | No | children[1].name.first |
    | appointed_conservator | False |  |
    | hardships['eviction-facing'] | False |  |
    | hardships['eviction-fear'] | False |  |
    | hardships['fear-utilities'] | False |  |
    | hardships['foreclosure-fear'] | False |  |
    | hardships['lost-utilities'] | False |  |
    | hardships['mortgage'] | False |  |
    | hardships['other'] | False |  |
    | hardships['rent'] | False |  |
    | hardships['utilities'] | False |  |
    | help_needed['cantsustain'] | False |  |
    | help_needed['needplan'] | False |  |
    | problems['business-license'] | False |  |
    | problems['car-reg'] | False |  |
    | problems['froze-account'] | False |  |
    | problems['garnish'] | False |  |
    | problems['garnish-increase'] | False |  |
    | problems['other'] | False |  |
    | problems['professional-license'] | False |  |
    | problems['refund'] | False |  |
    | problems['told-boss-garnish-increase'] | False |  |
    | problems['told-me-garnish-increase'] | False |  |
    | problems['too-much'] | False |  |
    | problems['trade-license'] | False |  |
    | rep_payee | False |  |
    | your_benefit_list['EAEDC'] | False |  |
    | your_benefit_list['SSI'] | False |  |
    | your_benefit_list['TAFDC'] | False |  |
    | your_children_benefit_list['EAEDC'] | False |  |
    | your_children_benefit_list['TAFDC'] | False |  |
    | signature | /sign |  |
  Then the question id should be "base yml download screen"
