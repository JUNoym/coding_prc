-- # 従業員のボーナスを計算するSQLクエリを書いてください。従業員のボーナスは、従業員のIDが奇数で、かつ従業員の名前が文字 'M' で始まらない場合、従業員の給与の100％です。それ以外の場合は、従業員のボーナスは0です。

-- # 結果テーブルは、employee_idで並べ替えられたものを返してください



-- # 従業員IDが奇数and名前はmから始まらない　→ 給与が0
-- # 従業員IDが偶数で名前がMから始まる　→給与0

select
    employee_id,
    case
        when mod(employee_id, 2) = 0 or name like 'M%' then 0 else salary
    end as bonus
from Employees
order by employee_id