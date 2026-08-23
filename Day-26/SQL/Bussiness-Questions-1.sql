-->Before answering the Question Describe the tables and view the records

select top 10* from CUSTOMERS;

select top 10* from  EMPLOYEE_PERFORMANCE;

select top 10* from INVENTORY;

select top 10* from PAYMENTS;

select top 10* from SUPPLIERS;


-->After reviving through this data set 
/*This dataset represents a simplified business operations environment. It combines customer information, payment transactions, inventory status, supplier information, and employee performance reviews. Together, these tables can be used to study customer segments, payment outcomes, inventory efficiency, supplier quality, employee productivity, and overall operational performance.*/


-->Bussiness Question -1


/*What is the overall payment performance of the business, and which payment modes and payment statuses contribute most to transaction volume and payment value?*/

with paymentanalysis as
(
    select
        mode,

        count(paymentid) as totaltransactions,

        sum(amount) as totalpaymentamount,

        avg(amount) as averagepaymentamount,

        sum(
            case
                when status = 'Success'
                then 1
                else 0
            end
        ) as successtransactions,

        sum(
            case
                when status = 'Failed'
                then 1
                else 0
            end
        ) as failedtransactions,

        sum(
            case
                when status = 'Pending'
                then 1
                else 0
            end
        ) as pendingtransactions,

        sum(
            case
                when status = 'Refunded'
                then 1
                else 0
            end
        ) as refundedtransactions

    from payments
    group by mode
)

select
    mode,
    totaltransactions,
    totalpaymentamount,
    averagepaymentamount,
    successtransactions,
    failedtransactions,
    pendingtransactions,
    refundedtransactions
from paymentanalysis
order by totalpaymentamount desc;



--Querry.2

/*Which warehouses have the greatest inventory risk and storage burden, and which products need to be reordered?*/


with inventoryanalysis as
(
    select
        warehouse,

        count(inventoryid) as totalinventory,

        sum(quantityavailable) as totalquantity,

        sum(storagecost) as totalstoragecost,

        avg(storagecost) as averagestoragecost,

        sum(
            case
                when quantityavailable <= reorderlevel
                then 1
                else 0
            end
        ) as reorderitems,

        sum(
            case
                when quantityavailable > reorderlevel
                then 1
                else 0
            end
        ) as normalitems

    from inventory
    group by warehouse
)

select
    warehouse,
    totalinventory,
    totalquantity,
    totalstoragecost,
    averagestoragecost,
    reorderitems,
    normalitems,

    round(
        (reorderitems * 100.0) / totalinventory,
        2
    ) as reorderpercentage

from inventoryanalysis
order by reorderpercentage desc;


--Querry.3


/*Which supplier categories and suppliers have the highest procurement risk based on supplier ratings, and how does supplier performance vary across countries and categories?*/


with supplierranking as
(
    select
        c1 as supplierid,
        c2 as suppliername,
        c3 as category,
        c4 as city,
        c5 as country,
        c6 as contractstart,
        try_to_number(c7) as rating,

        rank() over
        (
            partition by c3
            order by try_to_number(c7) desc
        ) as supplierrank,

        datediff
        (
            year,
            try_to_date(c6),
            current_date()
        ) as contractyears

    from suppliers

    where c1 <> 'SupplierID'
),

categorysummary as
(
    select
        c3 as category,

        count(c1) as totalsuppliers,

        round(
            avg(try_to_number(c7)),
            2
        ) as averagerating,

        max(try_to_number(c7)) as highestrating,

        min(try_to_number(c7)) as lowestrating,

        sum
        (
            case
                when try_to_number(c7) < 3
                then 1
                else 0
            end
        ) as lowratedsuppliers

    from suppliers

    where c1 <> 'SupplierID'

    group by c3
)

select
    sr.supplierid,
    sr.suppliername,
    sr.category,
    sr.city,
    sr.country,
    sr.contractstart,
    sr.rating,
    sr.supplierrank,
    sr.contractyears,

    cs.totalsuppliers,
    cs.averagerating,
    cs.highestrating,
    cs.lowestrating,
    cs.lowratedsuppliers

from supplierranking sr

join categorysummary cs
    on sr.category = cs.category

order by
    sr.category,
    sr.supplierrank;