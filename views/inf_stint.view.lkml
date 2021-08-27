view: inf_stint {
  sql_table_name: `baseball_data_final.inf_stint`
    ;;

  dimension: row_count {
    type: number
    sql: ${TABLE}.row_count ;;
  }

  dimension: season {
    type: string
    sql: ${TABLE}.season ;;
  }

  dimension: stint {
    primary_key: yes
    type: string
    sql: ${TABLE}.stint ;;
  }

  dimension: stint_group {
    type: string
    sql: ${TABLE}.stint_group ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
