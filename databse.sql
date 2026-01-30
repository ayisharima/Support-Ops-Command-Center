CREATE OR REPLACE VIEW vw_analytics_tickets AS
SELECT 
    subject,
    type,
    queue,
    priority,
    language,
    -- Combine all tags into one searchable field for Power BI
    TRIM(CONCAT_WS(', ', tag_1, tag_2, tag_3, tag_4, tag_5, tag_6, tag_7, tag_8)) as all_issues,
    -- Logic: If there is no 'answer', it's a 'Pending' ticket
    CASE WHEN answer IS NULL OR answer = '' THEN 'Pending' ELSE 'Resolved' END as status,
    -- Data Quality Check: Is the ticket missing a priority or queue?
    CASE WHEN priority IS NULL OR queue IS NULL THEN 'Action Required' ELSE 'Clean' END as data_quality_status
FROM raw_tickets;