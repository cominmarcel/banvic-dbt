with
    fonte_agencias as (
        select * 
        from {{ source('erp', 'agencias') }}
    )
     
    , renomeado as (
        select 
            cod_agencia as pk_agencia
           , cast (nome as string) as nome_agencia 
           , cast (endereco as string) as endereco
           , cast (cod_localidade as int ) as cod_localidade 
           , cast (data_abertura as timestamp ) as data_abertura 
           , cast (tipo_agencia as string) as tipo_agencia
        from fonte_agencias
    )

select *
from renomeado