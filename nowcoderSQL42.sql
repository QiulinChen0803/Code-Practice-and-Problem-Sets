/*DELETE FROM titles_test WHERE id NOT IN 
    (SELECT MIN(id) min_id FROM titles_test GROUP BY emp_no))

结果报错：You can't specify target table 'titles_test' for update in FROM clause"
意思是说，不能先select出同一表中的某些值，然后在同一语句中更改这个表。
解决方法：把用到titles_test这个表的查询作为中间表，用from子查询再查一遍。where中括起来是不管用的。*/


DELETE FROM titles_test WHERE id NOT IN 
(SELECT min_id FROM
    (SELECT MIN(id) min_id FROM titles_test GROUP BY emp_no) mt)