view: inf_player {
  sql_table_name: `baseball_data_final.inf_player`
    ;;

  dimension: bats {
    type: string
    sql: ${TABLE}.bats ;;
  }

  dimension: birth_city {
    type: string
    sql: ${TABLE}.birth_city ;;
  }

  dimension: birth_country {
    type: string
    sql: ${TABLE}.birth_country ;;
  }

  dimension: birth_state {
    type: string
    sql: ${TABLE}.birth_state ;;
  }

  dimension_group: birthday {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.birthday ;;
  }

  dimension: college_city {
    type: string
    sql: ${TABLE}.college_city ;;
  }

  dimension: college_country {
    type: string
    sql: ${TABLE}.college_country ;;
  }

  dimension: college_last_year {
    type: number
    sql: ${TABLE}.college_last_year ;;
  }

  dimension: college_name {
    type: string
    sql: ${TABLE}.college_name ;;
  }

  dimension: college_state {
    type: string
    sql: ${TABLE}.college_state ;;
  }

  dimension_group: deathday {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.deathday ;;
  }

  dimension_group: debut {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.debut ;;
  }

  dimension_group: final_game {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.final_game ;;
  }

  dimension: hall_of_fame_candidate_flag {
    type: yesno
    sql: ${TABLE}.hall_of_fame_candidate_flag ;;
  }

  dimension: hall_of_fame_flag {
    type: yesno
    sql: ${TABLE}.hall_of_fame_flag ;;
  }

  dimension: height {
    type: number
    sql: ${TABLE}.height ;;
  }

  dimension: max_percent_of_votes {
    type: number
    sql: ${TABLE}.max_percent_of_votes ;;
  }

  dimension: player_first_name {
    type: string
    sql: ${TABLE}.player_first_name ;;
  }

  dimension: player_id {
    type: string
    sql: ${TABLE}.player_id ;;
  }

  dimension: player_last_name {
    type: string
    sql: ${TABLE}.player_last_name ;;
  }

  dimension: player_name {
    type: string
    sql: ${TABLE}.player_name ;;
  }

  dimension: throws {
    type: string
    sql: ${TABLE}.throws ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.weight ;;
  }

  dimension: years_on_ballot {
    type: number
    sql: ${TABLE}.years_on_ballot ;;
  }

  measure: count {
    type: count
    drill_fields: [college_name, player_last_name, player_name, player_first_name]
  }
}
