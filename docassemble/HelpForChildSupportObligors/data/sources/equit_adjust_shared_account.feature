Feature: Equity adjustment

@regression @slow @equity_adjustment
Scenario: Equity adjustment with a shared account
  Given I start the interview at "ChildSupportObligors_umbrella.yml"
  And I get to the question id "base yml download screen" with this data:
    | var | value |
    | intro_screen['i_accept'] | True |
    | account_same | True |
    | prob_other | how did this get in the interview? I didn't see it before... |
    | admin_review_comments | DOR took money out of my bank account.\nDOR took my driver's license.\n\nI cannot afford to leave an abusive relationship.\nI cannot pay for groceries.\nI cannot pick up my child, I cannot get to work so I cannot earn money for basic needs and child support. |
    | appointed_conservator | False |
    | appointed_guardian | True |
    | assigned_amount | 45 |
    | your_past_benefits['State Veterans Benefits'].end_date | 03/29/2021 |
    | your_past_benefits['State Veterans Benefits'].start_date | 04/05/1987 |
    | your_past_benefits['State Veterans Benefits'].still_receiving | True |
    | benefits_used | True |
    | child_lives_w_obligor | False |
    | child_number | 2 |
    | client.address.address | 327 Kearsarge Mountain Road |
    | client.address.city | Wilmot |
    | client.address.state | New Hampshire |
    | client.address.zip | 03287 |
    | client.birthdate | 09/10/1956 |
    | client.cellphone |  |
    | client.dl |  |
    | client.email | dq43qweqwetqew@gmail.com |
    | client.homephone | +1 08572673171 |
    | client.name.first | alf |
    | client.name.last | lover |
    | client.name.middle | the |
    | client.ssn | 123-45-6789 |
    | client.workphone |  |
    | comment_car | I cannot pick up my child, I cannot get to work so I cannot earn money for basic needs and child support. |
    | comment_license | Not sure why license appeared here either |
    | cs_arrears_catch_up | False |
    | cs_arrears_date | 06/07/2020 |
    | cs_arrears_mc | Yes |
    | disability | I broke my neck |
    | disability_mod | False |
    | disabled_start | 09/30/2020 |
    | disabled_still | True |
    | dor_cse_notice_amount | 345 |
    | dor_cse_notice_amount_wrong | False |
    | dor_cse_notice_arrears | 4567 |
    | dor_cse_notice_arrears_wrong | False |
    | dor_cse_notice_court | Barnstable Probate and Family Court |
    | dor_cse_notice_court_wrong | False |
    | dor_cse_notice_frequency | 52 |
    | dor_cse_notice_frequency_wrong | False |
    | dor_take_ward_money | False |
    | dor_took_money_date | 12/24/2020 |
    | extra_help_needed['apple'] | False |
    | extra_help_needed['license'] | True |
    | extra_help_needed['orange'] | False |
    | extra_help_needed['registration'] | False |
    | guardian_order | True |
    | hardships['abuse'] | True |
    | hardships['eviction-facing'] | False |
    | hardships['eviction-fear'] | False |
    | hardships['fear-utilities'] | False |
    | hardships['foreclosure-fear'] | False |
    | hardships['groceries'] | True |
    | hardships['lost-utilities'] | False |
    | hardships['meds'] | False |
    | hardships['mortgage'] | False |
    | hardships['other'] | False |
    | hardships['rent'] | False |
    | hardships['utilities'] | False |
    | help_needed['cantafford'] | True |
    | help_needed['cantsustain'] | False |
    | help_needed['disagreement'] | False |
    | help_needed['needplan'] | False |
    | important | True |
    | is_not_zero | True |
    | mod_dis_reason | I hurt too much to do anything |
    | notice_date_delinquency | 12/01/2020 |
    | other_considerations['disabled'] | True |
    | other_considerations['incarcerated'] | False |
    | other_considerations['lost_job'] | False |
    | other_considerations['stopped_working'] | False |
    | other_need | False |
    | other_parent.name.first | Cathy |
    | other_parent.name.last | CustodialParent |
    | other_parent.name.middle |  |
    | other_parent_wrong | False |
    | pf_courts[0] | Barnstable Probate and Family Court |
    | pf_courts[1] | Berkshire Probate and Family Court |
    | pf_courts[2] | Bristol Probate and Family Court |
    | pf_courts[3] | Brockton Probate and Family Court |
    | pf_courts[4] | Dukes Probate and Family Court |
    | pf_courts[5] | Essex Probate and Family Court |
    | pf_courts[6] | Franklin Probate and Family Court |
    | pf_courts[7] | Hampden Probate and Family Court |
    | pf_courts[8] | Hampshire Probate and Family Court |
    | pf_courts[9] | Middlesex Probate and Family Court |
    | pf_courts[10] | Nantucket Probate and Family Court |
    | pf_courts[11] | Norfolk Probate and Family Court |
    | pf_courts[12] | Plymouth Probate and Family Court |
    | pf_courts[13] | Suffolk Probate and Family Court |
    | pf_courts[14] | Worcester Probate and Family Court |
    | pf_courts[15] | A court that is not in Massachusetts |
    | problems['account'] | True |
    | problems['business-license'] | False |
    | problems['car-reg'] | False |
    | problems['driver-license'] | True |
    | problems['froze-account'] | False |
    | problems['garnish'] | False |
    | problems['garnish-increase'] | False |
    | problems['knewnot'] | False |
    | problems['other'] | False |
    | problems['professional-license'] | False |
    | problems['refund'] | False |
    | problems['shared-account'] | False |
    | problems['told-boss-garnish-increase'] | False |
    | problems['told-me-garnish-increase'] | False |
    | problems['too-much'] | False |
    | problems['trade-license'] | False |
    | reconcile | False |
    | rep_payee | False |
    | requirements | True |
    | sign_on_device | True |
    | signature_date | 03/29/2021 |
    | welcome | True |
    | your_benefit_list['EAEDC'] | False |
    | your_benefit_list['SSI'] | False |
    | your_benefit_list['State Veterans Benefits'] | True |
    | your_benefit_list['TAFDC'] | False |
    | your_children_benefit_list['EAEDC'] | False |
    | your_children_benefit_list['SSI'] | False |
    | your_children_benefit_list['TAFDC'] | False |
    | your_children_benefit_list['None'] | True |
    | ssdi_past | False |
    | work_injury | True |
    | signature | /sign |
  Then the question id should be "base yml download screen"
