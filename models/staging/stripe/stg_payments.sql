with payments as (
    select
        id as customer_id,
        orderid as order_id,
        paymentmethod as payment_method,
        status,
        {{  cents_to_dollars('amount')  }} as amount
    from   
        {{ source('stripe', 'payment') }}
)

select * from payments