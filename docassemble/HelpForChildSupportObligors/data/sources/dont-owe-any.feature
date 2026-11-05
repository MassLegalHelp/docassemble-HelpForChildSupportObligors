Feature: obligor never fell behind

@regression @slow @dont_owe_any
Scenario: guardian, vet benefits, kid w ssi
  Given I start the interview at "ChildSupportObligors_umbrella.yml"
  And I get to the question id "base yml download screen" with this data:
    | var | value |
    | intro_screen['i_accept'] | True |
    | account_same | True |
    | appointed_conservator | False |
    | appointed_guardian | True |
    | assigned_amount | 0 |
    | benefits_used | True |
    | child_lives_w_obligor | False |
    | child_number | 2 |
    | client.address.address | 327 Kearsarge Mountain Road |
    | client.address.city | Wilmot |
    | client.address.state | New Hampshire |
    | client.address.zip | 03287 |
    | client.cellphone |  |
    | client.homephone | +1 08572673171 |
    | client.name.first | alf |
    | client.name.last | lover |
    | client.name.middle | the |
    | client.name.suffix |  |
    | client.ssn | 123-56-7890 |
    | client.workphone |  |
    | comment_car | I cannot pick up my children. I cannot get to work so I cannot earn money for basic needs and child support |
    | cs_arrears_date | 10/16/2012 |
    | cs_arrears_mc | No |
    | dor_cse_notice_amount | 456 |
    | dor_cse_notice_amount_wrong | False |
    | dor_cse_notice_arrears | 5467 |
    | dor_cse_notice_arrears_wrong | False |
    | dor_cse_notice_court | Norfolk Probate and Family Court |
    | dor_cse_notice_court_wrong | False |
    | dor_cse_notice_frequency | 52 |
    | dor_cse_notice_frequency_wrong | False |
    | dor_take_ward_account | True |
    | dor_take_ward_money | True |
    | dor_took_money_date | 12/12/2020 |
    | guardian_order | True |
    | hardships['abuse'] | True |
    | hardships['eviction-facing'] | False |
    | hardships['eviction-fear'] | False |
    | hardships['fear-utilities'] | False |
    | hardships['foreclosure-fear'] | False |
    | hardships['groceries'] | True |
    | hardships['lost-utilities'] | False |
    | hardships['meds'] | True |
    | hardships['mortgage'] | False |
    | hardships['other'] | False |
    | hardships['rent'] | False |
    | hardships['utilities'] | False |
    | help_needed['cantafford'] | True |
    | help_needed['cantsustain'] | False |
    | help_needed['disagreement'] | True |
    | help_needed['needplan'] | False |
    | important | True |
    | notice_date_delinquency | 11/02/2020 |
    | other_parent.name.first | Cathy |
    | other_parent.name.last | CustodialParent |
    | other_parent.name.middle |  |
    | other_parent_wrong | False |
    | problems['account'] | True |
    | problems['business-license'] | False |
    | problems['car-reg'] | False |
    | problems['driver-license'] | True |
    | problems['froze-account'] | False |
    | problems['garnish'] | False |
    | problems['garnish-increase'] | False |
    | problems['knewnot'] | True |
    | problems['other'] | False |
    | problems['professional-license'] | False |
    | problems['refund'] | False |
    | problems['shared-account'] | True |
    | problems['told-boss-garnish-increase'] | False |
    | problems['told-me-garnish-increase'] | False |
    | problems['too-much'] | False |
    | problems['trade-license'] | False |
    | rep_payee | False |
    | requirements | True |
    | sign_on_device | True |
    | signature | /sign |
    | signature_date | 12/22/2021 |
    | welcome | True |
    | your_benefit_list['EAEDC'] | False |
    | your_benefit_list['SSI'] | False |
    | your_benefit_list['State Veterans Benefits'] | True |
    | your_benefit_list['TAFDC'] | False |
    | your_children_benefit_list['EAEDC'] | False |
    | your_children_benefit_list['SSI'] | True |
    | your_children_benefit_list['TAFDC'] | False |
    | your_children_past_benefits['SSI'].end_date | 12/22/2021 |
    | your_children_past_benefits['SSI'].start_date | 04/04/2004 |
    | your_children_past_benefits['SSI'].still_receiving | True |
    | your_past_benefits['State Veterans Benefits'].end_date | 12/22/2021 |
    | your_past_benefits['State Veterans Benefits'].start_date | 11/11/1978 |
    | your_past_benefits['State Veterans Benefits'].still_receiving | True |
  Then the question id should be "base yml download screen"
