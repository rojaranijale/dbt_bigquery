{{ config(materialized='table') }}
select * from de2roja.youtube.t2 as table1 where kind = "youtube#video"