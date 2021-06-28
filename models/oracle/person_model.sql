with source_person as (
    SELECT FIRST_NAME, LAST_NAME, CONCAT(CONCAT(FIRST_NAME, ' '), LAST_NAME) FROM {{ source('snowflake_person', 'ORACLE_PERSON') }}
)

SELECT * FROM source_person