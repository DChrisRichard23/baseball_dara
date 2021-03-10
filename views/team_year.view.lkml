view: team_year {
  sql_table_name: `baseball_data_final.team_year`
    ;;

  dimension: division_win {
    type: yesno
    sql: ${TABLE}.division_win ;;
  }

  dimension: games {
    type: number
    sql: ${TABLE}.games ;;
  }

  dimension: league_win {
    type: yesno
    sql: ${TABLE}.league_win ;;
  }

  dimension: losses {
    type: number
    sql: ${TABLE}.losses ;;
  }

  dimension: team_name {
    type: string
    sql: ${TABLE}.team_name ;;
  }

  dimension: wildcard_win {
    type: yesno
    sql: ${TABLE}.wildcard_win ;;
  }

  dimension: wins {
    type: number
    sql: ${TABLE}.wins ;;
  }

  dimension: world_series_win {
    type: yesno
    sql: ${TABLE}.world_series_win ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [team_name]
  }
}
