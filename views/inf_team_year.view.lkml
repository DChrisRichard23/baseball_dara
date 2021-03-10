view: inf_team_year {
  sql_table_name: `baseball_data_final.inf_team_year`
    ;;

  dimension: at_bats {
    type: number
    sql: ${TABLE}.at_bats ;;
  }

  dimension: batter_park_factor {
    type: number
    sql: ${TABLE}.batter_park_factor ;;
  }

  dimension: caught_stealing {
    type: number
    sql: ${TABLE}.caught_stealing ;;
  }

  dimension: complete_games {
    type: number
    sql: ${TABLE}.complete_games ;;
  }

  dimension: division_id {
    type: string
    sql: ${TABLE}.division_id ;;
  }

  dimension: division_name {
    type: string
    sql: ${TABLE}.division_name ;;
  }

  dimension: division_rank {
    type: number
    sql: ${TABLE}.division_rank ;;
  }

  dimension: division_win {
    type: yesno
    sql: ${TABLE}.division_win ;;
  }

  dimension: double_plays {
    type: number
    sql: ${TABLE}.double_plays ;;
  }

  dimension: doubles {
    type: number
    sql: ${TABLE}.doubles ;;
  }

  dimension: earned_run_average {
    type: number
    sql: ${TABLE}.earned_run_average ;;
  }

  dimension: earned_runs_allowed {
    type: number
    sql: ${TABLE}.earned_runs_allowed ;;
  }

  dimension: errors {
    type: number
    sql: ${TABLE}.errors ;;
  }

  dimension: fielding_percentage {
    type: number
    sql: ${TABLE}.fielding_percentage ;;
  }

  dimension: franchise_id {
    type: string
    sql: ${TABLE}.franchise_id ;;
  }

  dimension: franchise_name {
    type: string
    sql: ${TABLE}.franchise_name ;;
  }

  dimension: games {
    type: number
    sql: ${TABLE}.games ;;
  }

  dimension: hit_by_pitch {
    type: number
    sql: ${TABLE}.hit_by_pitch ;;
  }

  dimension: hits {
    type: number
    sql: ${TABLE}.hits ;;
  }

  dimension: hits_allowed {
    type: number
    sql: ${TABLE}.hits_allowed ;;
  }

  dimension: home_attendance {
    type: number
    sql: ${TABLE}.home_attendance ;;
  }

  dimension: home_games {
    type: number
    sql: ${TABLE}.home_games ;;
  }

  dimension: homeruns {
    type: number
    sql: ${TABLE}.homeruns ;;
  }

  dimension: homeruns_allowed {
    type: number
    sql: ${TABLE}.homeruns_allowed ;;
  }

  dimension: is_active_franchise {
    type: yesno
    sql: ${TABLE}.is_active_franchise ;;
  }

  dimension: league_id {
    type: string
    sql: ${TABLE}.league_id ;;
  }

  dimension: league_name {
    type: string
    sql: ${TABLE}.league_name ;;
  }

  dimension: league_win {
    type: yesno
    sql: ${TABLE}.league_win ;;
  }

  dimension: losses {
    type: number
    sql: ${TABLE}.losses ;;
  }

  dimension: make_playoffs {
    type: yesno
    sql: ${TABLE}.make_playoffs ;;
  }

  dimension: outs_pitched {
    type: number
    sql: ${TABLE}.outs_pitched ;;
  }

  dimension: park_city {
    type: string
    sql: ${TABLE}.park_city ;;
  }

  dimension: park_name {
    type: string
    sql: ${TABLE}.park_name ;;
  }

  dimension: park_state {
    type: string
    sql: ${TABLE}.park_state ;;
  }

  dimension: pitcher_park_factor {
    type: number
    sql: ${TABLE}.pitcher_park_factor ;;
  }

  dimension: runs {
    type: number
    sql: ${TABLE}.runs ;;
  }

  dimension: runs_allowed {
    type: number
    sql: ${TABLE}.runs_allowed ;;
  }

  dimension: sacrifice_flies {
    type: number
    sql: ${TABLE}.sacrifice_flies ;;
  }

  dimension: saves {
    type: number
    sql: ${TABLE}.saves ;;
  }

  dimension: shutouts {
    type: number
    sql: ${TABLE}.shutouts ;;
  }

  dimension: stikeouts_allowed {
    type: number
    sql: ${TABLE}.stikeouts_allowed ;;
  }

  dimension: stolen_bases {
    type: number
    sql: ${TABLE}.stolen_bases ;;
  }

  dimension: strikeouts {
    type: number
    sql: ${TABLE}.strikeouts ;;
  }

  dimension: team_id {
    type: string
    sql: ${TABLE}.team_id ;;
  }

  dimension: team_name {
    type: string
    sql: ${TABLE}.team_name ;;
  }

  dimension: team_park {
    type: string
    sql: ${TABLE}.team_park ;;
  }

  dimension: team_year_summary {
    type: string
    sql: ${TABLE}.team_year_summary ;;
  }

  dimension: triples {
    type: number
    sql: ${TABLE}.triples ;;
  }

  dimension: walks {
    type: number
    sql: ${TABLE}.walks ;;
  }

  dimension: walks_allowed {
    type: number
    sql: ${TABLE}.walks_allowed ;;
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
    drill_fields: [park_name, team_name, franchise_name, league_name, division_name]
  }
}
