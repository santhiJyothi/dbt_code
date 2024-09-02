version: 2

exposures:

  - name: weekly_metrics
    label: santhi by the Week
    type: dashboard
    maturity: high
    description: 
     For more exposure about project details

    depends_on:
      - ref('final')
      - ref('order_merge')
      - ref('Macro_model_adding')
      - ref('order_append')
      - source('datafeed_shared_schema','STG_CUSTOMERS')
      - source('datafeed_shared_schema','STG_ORDERS')
      - source('datafeed_shared_schema','STG_PAYMENTS')
      - source('datafeed_shared_schema','Emp1')

  
    owner:
      name:  santhi
      email: santhijyothikarri99@gmail.com


   
