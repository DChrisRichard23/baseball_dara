view: all_stats_entire_season {
  sql_table_name: `baseball_data_final.all_stats_entire_season`
    ;;


  ##################################################################################
  # START: Batting #
  ##################################################################################
  dimension: at_bats_in {
    hidden: yes
    type: number
    sql: ${TABLE}.at_bats ;;
  }

  measure: at_bats {
    type: sum
    sql: ${at_bats_in} ;;
    value_format: "#,##0"
  }
  ##################################################################################
  # END: Batting #
  ##################################################################################

  ##################################################################################
  # START: Fielding #
  ##################################################################################
  dimension: assists {
    type: number
    sql: ${TABLE}.assists ;;
  }
  ##################################################################################
  # END: Fielding #
  ##################################################################################

  ##################################################################################
  # START: Pitching #
  ##################################################################################

  ##################################################################################
  # END: Pitching #
  ##################################################################################

  dimension: batters_faced_by_pitcher {
    type: number
    sql: ${TABLE}.batters_faced_by_pitcher ;;
  }

  dimension: baulks {
    type: number
    sql: ${TABLE}.baulks ;;
  }

  dimension: caught_stealing {
    type: number
    sql: ${TABLE}.caught_stealing ;;
  }

  dimension: caught_stealing_against {
    type: number
    sql: ${TABLE}.caught_stealing_against ;;
  }

  dimension: complete_games {
    type: number
    sql: ${TABLE}.complete_games ;;
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

  dimension: earned_runs {
    type: number
    sql: ${TABLE}.earned_runs ;;
  }

  dimension: errors {
    type: number
    sql: ${TABLE}.errors ;;
  }

  dimension: games_batting_in {
    type: number
    hidden:  yes
    sql: ${TABLE}.games_batting ;;
  }

  measure: games_batting {
    type: sum
    sql: ${games_batting_in} ;;
    value_format: "#,##0"
  }

  dimension: games_fielding {
    type: number
    sql: ${TABLE}.games_fielding ;;
  }

  dimension: games_finished {
    type: number
    sql: ${TABLE}.games_finished ;;
  }

  dimension: games_pitched {
    type: number
    sql: ${TABLE}.games_pitched ;;
  }

  dimension: games_started_fielding {
    type: number
    sql: ${TABLE}.games_started_fielding ;;
  }

  dimension: games_started_pitching {
    type: number
    sql: ${TABLE}.games_started_pitching ;;
  }

  dimension: grounded_in_double_play_batting {
    type: number
    sql: ${TABLE}.grounded_in_double_play_batting ;;
  }

  dimension: grounded_in_double_play_pitching {
    type: number
    sql: ${TABLE}.grounded_in_double_play_pitching ;;
  }

  dimension: hit_by_pitch_batting {
    type: number
    sql: ${TABLE}.hit_by_pitch_batting ;;
  }

  dimension: hit_by_pitch_pitching {
    type: number
    sql: ${TABLE}.hit_by_pitch_pitching ;;
  }

  dimension: hits {
    type: number
    sql: ${TABLE}.hits ;;
  }

  dimension: hits_allowed {
    type: number
    sql: ${TABLE}.hits_allowed ;;
  }

  dimension: homeruns_in {
    hidden: yes
    type: number
    sql: ${TABLE}.homeruns ;;
  }

  measure: homeruns {
    type: sum
    sql: ${homeruns_in} ;;
    value_format: "#,##0"
  }



  measure: homeruns_per_team {
    type: number
    sql: ${homeruns} / ${teams};;
    value_format: "#,##0.0"
  }

  measure: homeruns_per_year {
    type: number
    sql: ${homeruns} / ${seasons};;
    value_format: "#,##0.0"
  }

  dimension: homeruns_allowed {
    type: number
    sql: ${TABLE}.homeruns_allowed ;;
  }

  dimension: in_batting_flag {
    type: number
    sql: ${TABLE}.in_batting_flag ;;
  }

  dimension: in_fielding_flag {
    type: number
    sql: ${TABLE}.in_fielding_flag ;;
  }

  dimension: in_pitching_flag {
    type: number
    sql: ${TABLE}.in_pitching_flag ;;
  }

  dimension: inning_outs {
    type: number
    sql: ${TABLE}.inning_outs ;;
  }

  dimension: intentional_walks_batting {
    type: number
    sql: ${TABLE}.intentional_walks_batting ;;
  }

  dimension: intentional_walks_pitching {
    type: number
    sql: ${TABLE}.intentional_walks_pitching ;;
  }

  dimension: losses {
    type: number
    sql: ${TABLE}.losses ;;
  }

  dimension: opposing_batting_average {
    type: number
    sql: ${TABLE}.opposing_batting_average ;;
  }

  dimension: outs_pitched {
    type: number
    sql: ${TABLE}.outs_pitched ;;
  }

  dimension: passed_balls {
    type: number
    sql: ${TABLE}.passed_balls ;;
  }

  dimension: player_id {
    type: string
    sql: ${TABLE}.player_id ;;
  }

  dimension: position {
    type: string
    sql: ${TABLE}.position ;;
  }

  dimension: putouts {
    type: number
    sql: ${TABLE}.putouts ;;
  }

  dimension: runs {
    type: number
    sql: ${TABLE}.runs ;;
  }

  dimension: runs_allowed {
    type: number
    sql: ${TABLE}.runs_allowed ;;
  }

  dimension: runs_batted_in {
    type: number
    sql: ${TABLE}.runs_batted_in ;;
  }

  dimension: sacrifice_flies {
    type: number
    sql: ${TABLE}.sacrifice_flies ;;
  }

  dimension: sacrifice_flies_by_opposing_batter {
    type: number
    sql: ${TABLE}.sacrifice_flies_by_opposing_batter ;;
  }

  dimension: sacrifice_hits {
    type: number
    sql: ${TABLE}.sacrifice_hits ;;
  }

  dimension: sacrifices_by_opposing_batter {
    type: number
    sql: ${TABLE}.sacrifices_by_opposing_batter ;;
  }

  dimension: saves {
    type: number
    sql: ${TABLE}.saves ;;
  }

  dimension: shutouts {
    type: number
    sql: ${TABLE}.shutouts ;;
  }

  dimension: stint {
    type: string
    sql: ${TABLE}.stint ;;
  }

  dimension: stolen_bases {
    type: number
    sql: ${TABLE}.stolen_bases ;;
  }

  dimension: stolen_bases_against {
    type: number
    sql: ${TABLE}.stolen_bases_against ;;
  }

  dimension: strikeouts_batting {
    type: number
    sql: ${TABLE}.strikeouts_batting ;;
  }

  dimension: strikeouts_pitching {
    type: number
    sql: ${TABLE}.strikeouts_pitching ;;
  }

  dimension: team_id {
    type: string
    sql: ${TABLE}.team_id ;;
  }

  measure: teams {
    type: count_distinct
    sql: ${team_id} ;;
    value_format: "#,##0"
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

  dimension: wild_pitches {
    type: number
    sql: ${TABLE}.wild_pitches ;;
  }

  dimension: wins {
    type: number
    sql: ${TABLE}.wins ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: seasons {
    type: count_distinct
    sql: ${year} ;;
    value_format: "#,##0"
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
