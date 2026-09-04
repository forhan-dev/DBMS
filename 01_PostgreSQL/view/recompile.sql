-- Recompile the view to ensure it is up-to-date with the underlying tables
ALTER VIEW student_names 
COMPILE;

-- Recompile the materialized view to ensure it is up-to-date with the underlying tables
ALTER MATERIALIZED VIEW sales_summary
REFRESH FAST ON DEMAND;
