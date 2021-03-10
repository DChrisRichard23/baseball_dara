view: inf_player_year {
  sql_table_name: `baseball_data_final.inf_player_year`
    ;;

  dimension: all_star_flag {
    type: string
    sql: ${TABLE}.all_star_flag ;;
  }

  dimension: all_star_starting_pos {
    type: string
    sql: ${TABLE}.all_star_starting_pos ;;
  }

  dimension: award_count {
    type: number
    sql: ${TABLE}.award_count ;;
  }

  dimension: award_list {
    type: string
    sql: ${TABLE}.award_list ;;
  }

  dimension: hits {
    type: number
    sql: ${TABLE}.hits ;;
  }

  dimension: player_id {
    type: string
    sql: ${TABLE}.player_id ;;
  }

  dimension: position {
    type: string
    sql: ${TABLE}.position ;;
  }

  dimension: salary {
    type: number
    sql: ${TABLE}.salary ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
