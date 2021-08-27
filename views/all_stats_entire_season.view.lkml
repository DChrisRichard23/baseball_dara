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
    view_label: "Batting Stats"
    type: sum
    sql: ${at_bats_in} ;;
    value_format: "#,##0"
  }

  dimension: caught_stealing_in {
    hidden: yes
    type: number
    sql: ${TABLE}.caught_stealing ;;
  }

  measure: caught_stealing {
    view_label: "Batting Stats"
    type: sum
    sql: ${caught_stealing_in} ;;
    value_format: "#,##0"
  }

  dimension: doubles_in {
    hidden: yes
    type: number
    sql: ${TABLE}.doubles ;;
  }

  measure: doubles {
    view_label: "Batting Stats"
    type: sum
    sql: ${doubles_in} ;;
    value_format: "#,##0"
  }

  dimension: games_batting_in {
    type: number
    hidden:  yes
    sql: ${TABLE}.games_batting ;;
  }

  measure: games_batting {
    view_label: "Batting Stats"
    type: sum
    sql: ${games_batting_in} ;;
    value_format: "#,##0"
  }

  dimension: grounded_in_double_play_batting_in {
    hidden: yes
    type: number
    sql: ${TABLE}.grounded_in_double_play_batting ;;
  }

  measure: grounded_in_double_play_batting {
    view_label: "Batting Stats"
    type: sum
    sql: ${grounded_in_double_play_batting_in} ;;
    value_format: "#,##0"
  }

  dimension: hits_in {
    hidden: yes
    type: number
    sql: ${TABLE}.hits ;;
  }

  measure: hits {
    view_label: "Batting Stats"
    type: sum
    sql: ${hits_in} ;;
    value_format: "#,##0"
  }

  dimension: homeruns_in {
    hidden: yes
    type: number
    sql: ${TABLE}.homeruns ;;
  }

  measure: homeruns {
    view_label: "Batting Stats"
    type: sum
    sql: ${homeruns_in} ;;
    value_format: "#,##0"
  }

  measure: homeruns_per_team {
    view_label: "Batting Stats"
    type: number
    sql: ${homeruns} / ${teams};;
    value_format: "#,##0.0"
  }

  measure: homeruns_per_year {
    view_label: "Batting Stats"
    type: number
    sql: ${homeruns} / ${seasons};;
    value_format: "#,##0.0"
  }

  dimension: in_batting_flag_in {
    hidden: yes
    type: number
    sql: ${TABLE}.in_batting_flag ;;
  }

  dimension: in_batting_flag {
    view_label: "Batting Stats"
    type: yesno
    sql: ${in_batting_flag_in} = 1 ;;
  }

  dimension: intentional_walks_batting_in {
    hidden: yes
    type: number
    sql: ${TABLE}.intentional_walks_batting ;;
  }

  measure: intentional_walks_batting {
    view_label: "Batting Stats"
    type: sum
    sql: ${intentional_walks_batting_in} ;;
    value_format: "#,##0"
  }

  dimension: runs_in {
    hidden: yes
    type: number
    sql: ${TABLE}.runs ;;
  }

  measure: runs {
    view_label: "Batting Stats"
    type: sum
    sql: ${runs_in} ;;
    value_format: "#,##0"
  }

  dimension: runs_batted_in_in {
    hidden: yes
    type: number
    sql: ${TABLE}.runs_batted_in ;;
  }

  measure: runs_batted_in {
    view_label: "Batting Stats"
    type: sum
    sql: ${runs_batted_in_in} ;;
    value_format: "#,##0"
  }

  dimension: sacrifice_flies_in {
    hidden: yes
    type: number
    sql: ${TABLE}.sacrifice_flies ;;
  }

  measure: sacrifice_flies {
    view_label: "Batting Stats"
    type: sum
    sql: ${sacrifice_flies_in} ;;
    value_format: "#,##0"
  }

  dimension: sacrifice_hits_in {
    hidden: yes
    type: number
    sql: ${TABLE}.sacrifice_hits ;;
  }

  measure: sacrifice_hits {
    view_label: "Batting Stats"
    type: sum
    sql: ${sacrifice_hits_in} ;;
    value_format: "#,##0"
  }

  dimension: stolen_bases_in {
    hidden: yes
    type: number
    sql: ${TABLE}.stolen_bases ;;
  }

  measure: stolen_bases {
    view_label: "Batting Stats"
    type: sum
    sql: ${stolen_bases_in} ;;
    value_format: "#,##0"
  }

  dimension: strikeouts_batting_in {
    hidden: yes
    type: number
    sql: ${TABLE}.strikeouts_batting ;;
  }

  measure: strikeouts_batting {
    view_label: "Batting Stats"
    type: sum
    sql: ${strikeouts_batting_in} ;;
    value_format: "#,##0"
  }

  dimension: triples_in {
    hidden: yes
    type: number
    sql: ${TABLE}.triples ;;
  }

  measure: triples {
    view_label: "Batting Stats"
    type: sum
    sql: ${triples_in} ;;
    value_format: "#,##0"
  }

  dimension: walks_in {
    hidden: yes
    type: number
    sql: ${TABLE}.walks ;;
  }

  measure: walks {
    view_label: "Batting Stats"
    type: sum
    sql: ${walks_in} ;;
    value_format: "#,##0"
  }

  measure: singles {
    view_label: "Batting Stats"
    type: number
    sql: ${hits} - ${doubles} - ${triples} - ${homeruns} ;;
    value_format_name: decimal_0
  }

  measure: outs_batting {
    view_label: "Batting Stats"
    type: number
    sql: ${at_bats} - ${hits} ;;
    value_format_name: decimal_0
  }

  measure: hit_into_out {
    view_label: "Batting Stats"
    type: number
    sql: ${outs_batting} - ${strikeouts_batting} ;;
    value_format_name: decimal_0
  }

  measure: plate_appearances {
    view_label: "Batting Stats"
    type: number
    sql: ${at_bats} + ${walks} + ${hit_by_pitch_batting} + ${sacrifice_hits} + ${sacrifice_flies};;
    value_format_name: decimal_0
  }

  measure: strike_out_rate_batting {
    view_label: "Batting Stats"
    type: number
    sql: ${strikeouts_batting} / ${plate_appearances} ;;
    value_format_name: percent_1
  }

  dimension: hit_by_pitch_batting_in {
    hidden: yes
    type: number
    sql: ${TABLE}.hit_by_pitch_batting ;;
  }

  measure: hit_by_pitch_batting {
    view_label: "Batting Stats"
    type: sum
    sql: ${hit_by_pitch_batting_in} ;;
    value_format: "#,##0"
  }

  measure: batting_average {
    view_label: "Batting Stats"
    type: number
    sql: ${hits} / NULLIF(${at_bats}, 0) ;;
    value_format_name: decimal_3
  }

  measure: on_base_percentage {
    view_label: "Batting Stats"
    type: number
    sql: (${hits} + ${walks} + ${hit_by_pitch_batting}) / NULLIF((${at_bats} + ${walks} + ${hit_by_pitch_batting} + ${sacrifice_flies}), 0) ;;
    value_format_name: decimal_3
  }

  measure: slugging_percentage {
    view_label: "Batting Stats"
    type: number
    sql: (${singles} + (${doubles}*2) + (${triples}*3) + (${homeruns}*4)) / NULLIF(${at_bats}, 0) ;;
    value_format_name: decimal_3
    description: "(${singles} + (${doubles}*2) + (${triples}*3) + (${home_runs}*4)) / NULLIF(${at_bats}, 0)"
  }

  measure: on_base_plus_slugging_percentage {
    view_label: "Batting Stats"
    type: number
    sql: ${on_base_percentage} + ${slugging_percentage} ;;
    value_format_name: decimal_3
  }
  ##################################################################################
  # END: Batting #
  ##################################################################################

  ##################################################################################
  # START: Fielding #
  ##################################################################################
  dimension: assists_in {
    hidden: yes
    type: number
    sql: ${TABLE}.assists ;;
  }

  measure: assists {
    view_label: "Fielding Stats"
    type: sum
    sql: ${assists_in} ;;
    value_format: "#,##0"
  }

  dimension: caught_stealing_against_in {
    hidden: yes
    type: number
    sql: ${TABLE}.caught_stealing_against ;;
  }

  measure: caught_stealing_against {
    view_label: "Fielding Stats"
    type: sum
    sql: ${caught_stealing_against_in} ;;
    value_format: "#,##0"
  }

  dimension: double_plays_in {
    hidden: yes
    type: number
    sql: ${TABLE}.double_plays ;;
  }

  measure: double_plays {
    view_label: "Fielding Stats"
    type: sum
    sql: ${double_plays_in} ;;
    value_format: "#,##0"
  }

  dimension: errors_in {
    hidden: yes
    type: number
    sql: ${TABLE}.errors ;;
  }

  measure: errors {
    view_label: "Fielding Stats"
    type: sum
    sql: ${errors_in} ;;
    value_format: "#,##0"
  }

  dimension: games_fielding_in {
    hidden: yes
    type: number
    sql: ${TABLE}.games_fielding ;;
  }

  measure: games_fielding {
    view_label: "Fielding Stats"
    type: sum
    sql: ${games_fielding_in} ;;
    value_format: "#,##0"
  }

  dimension: games_started_fielding_in {
    hidden: yes
    type: number
    sql: ${TABLE}.games_started_fielding ;;
  }

  measure: games_started_fielding {
    view_label: "Fielding Stats"
    type: sum
    sql: ${games_started_fielding_in} ;;
    value_format: "#,##0"
  }

  dimension: in_fielding_flag_in {
    hidden: yes
    type: number
    sql: ${TABLE}.in_fielding_flag ;;
  }

  dimension: in_fielding_flag {
    view_label: "Fielding Stats"
    type: yesno
    sql: ${in_fielding_flag_in} = 1 ;;
  }

  dimension: inning_outs_in {
    hidden: yes
    type: number
    sql: ${TABLE}.inning_outs ;;
  }

  measure: inning_outs {
    view_label: "Fielding Stats"
    type: sum
    sql: ${inning_outs_in} ;;
    value_format: "#,##0"
  }

  dimension: intentional_walks_pitching_in {
    hidden: yes
    type: number
    sql: ${TABLE}.intentional_walks_pitching ;;
  }

  measure: intentional_walks_pitching {
    view_label: "Fielding Stats"
    type: sum
    sql: ${intentional_walks_pitching_in} ;;
    value_format: "#,##0"
  }

  dimension: passed_balls_in {
    hidden: yes
    type: number
    sql: ${TABLE}.passed_balls ;;
  }

  measure: passed_balls {
    view_label: "Fielding Stats"
    type: sum
    sql: ${passed_balls_in} ;;
    value_format: "#,##0"
  }

  dimension: position {
    view_label: "Fielding Stats"
    type: string
    sql: ${TABLE}.position ;;
  }

  dimension: putouts_in {
    hidden: yes
    type: number
    sql: ${TABLE}.putouts ;;
  }

  measure: putouts {
    view_label: "Fielding Stats"
    type: sum
    sql: ${putouts_in} ;;
    value_format: "#,##0"
  }

  dimension: stolen_bases_against_in {
    hidden: yes
    type: number
    sql: ${TABLE}.stolen_bases_against ;;
  }

  measure: stolen_bases_against {
    view_label: "Fielding Stats"
    type: sum
    sql: ${stolen_bases_against_in} ;;
    value_format: "#,##0"
  }
  ##################################################################################
  # END: Fielding #
  ##################################################################################

  ##################################################################################
  # START: Pitching #
  ##################################################################################
  dimension: batters_faced_by_pitcher_in {
    hidden: yes
    type: number
    sql: ${TABLE}.batters_faced_by_pitcher ;;
  }

  measure: batters_faced_by_pitcher {
    view_label: "Pitching Stats"
    type: sum
    sql: ${batters_faced_by_pitcher_in} ;;
    value_format: "#,##0"
  }

  dimension: baulks_in {
    hidden: yes
    type: number
    sql: ${TABLE}.baulks ;;
  }

  measure: baulks {
    view_label: "Pitching Stats"
    type: sum
    sql: ${baulks_in} ;;
    value_format: "#,##0"
  }

  dimension: complete_games_in {
    hidden: yes
    type: number
    sql: ${TABLE}.complete_games ;;
  }

  measure: complete_games {
    view_label: "Pitching Stats"
    type: sum
    sql: ${complete_games_in} ;;
    value_format: "#,##0"
  }

  dimension: earned_run_average_in {
    hidden: yes
    type: number
    sql: ${TABLE}.earned_run_average ;;
  }

  measure: earned_run_average {
    view_label: "Pitching Stats"
    type: number
    sql: (SUM(${earned_runs_in})/NULLIF(SUM(${outs_pitched_in}/3),0))*9 ;;
    value_format_name: decimal_3
  }

  dimension: earned_runs_in {
    hidden: yes
    type: number
    sql: ${TABLE}.earned_runs ;;
  }

  measure: earned_runs {
    view_label: "Pitching Stats"
    type: sum
    sql: ${earned_runs_in} ;;
    value_format: "#,##0"
  }

  dimension: outs_pitched_in {
    hidden: yes
    type: number
    sql: ${TABLE}.outs_pitched ;;
  }

  measure: outs_pitched {
    view_label: "Pitching Stats"
    type: sum
    sql: ${outs_pitched_in} ;;
    value_format: "#,##0"
  }

  dimension: games_finished_in {
    hidden: yes
    type: number
    sql: ${TABLE}.games_finished ;;
  }

  measure: games_finished {
    view_label: "Pitching Stats"
    type: sum
    sql: ${games_finished_in} ;;
    value_format: "#,##0"
  }

  dimension: games_pitched_in {
    hidden: yes
    type: number
    sql: ${TABLE}.games_pitched ;;
  }

  measure: games_pitched {
    view_label: "Pitching Stats"
    type: sum
    sql: ${games_pitched_in} ;;
    value_format: "#,##0"
  }

  dimension: games_started_pitching_in {
    hidden: yes
    type: number
    sql: ${TABLE}.games_started_pitching ;;
  }

  measure: games_started_pitching {
    view_label: "Pitching Stats"
    type: sum
    sql: ${games_started_pitching_in} ;;
    value_format: "#,##0"
  }

  dimension: grounded_in_double_play_pitching_in {
    hidden: yes
    type: number
    sql: ${TABLE}.grounded_in_double_play_pitching ;;
  }

  measure: grounded_in_double_play_pitching {
    view_label: "Pitching Stats"
    type: sum
    sql: ${grounded_in_double_play_pitching_in} ;;
    value_format: "#,##0"
  }

  dimension: hit_by_pitch_pitching_in {
    hidden: yes
    type: number
    sql: ${TABLE}.hit_by_pitch_pitching ;;
  }

  measure: hit_by_pitch_pitching {
    view_label: "Pitching Stats"
    type: sum
    sql: ${hit_by_pitch_pitching_in} ;;
    value_format: "#,##0"
  }

  dimension: hits_allowed_in {
    hidden: yes
    type: number
    sql: ${TABLE}.hits_allowed ;;
  }

  measure: hits_allowed {
    view_label: "Pitching Stats"
    type: sum
    sql: ${hits_allowed_in} ;;
    value_format: "#,##0"
  }

  dimension: homeruns_allowed_in {
    hidden: yes
    type: number
    sql: ${TABLE}.homeruns_allowed ;;
  }

  measure: homeruns_allowed {
    view_label: "Pitching Stats"
    type: sum
    sql: ${homeruns_allowed_in} ;;
    value_format: "#,##0"
  }

  dimension: in_pitching_flag_in {
    hidden: yes
    type: number
    sql: ${TABLE}.in_pitching_flag ;;
  }

  dimension: in_pitching_flag {
    view_label: "Pitching Stats"
    type: yesno
    sql: ${in_pitching_flag_in} = 1 ;;
  }

  dimension: losses_in {
    hidden: yes
    type: number
    sql: ${TABLE}.losses ;;
  }

  measure: losses {
    view_label: "Pitching Stats"
    type: sum
    sql: ${losses_in} ;;
    value_format: "#,##0"
  }

  dimension: opposing_batting_average_in {
    hidden: yes
    type: number
    sql: ${TABLE}.opposing_batting_average ;;
  }

  measure: opposing_batting_average {
    view_label: "Pitching Stats"
    type: number
    sql: SUM(${hits_allowed_in})/NULLIF(SUM(${batters_faced_by_pitcher_in}), 0) ;;
    value_format_name: decimal_3
  }

  dimension: runs_allowed_in {
    hidden: yes
    type: number
    sql: ${TABLE}.runs_allowed ;;
  }

  measure: runs_allowed {
    view_label: "Pitching Stats"
    type: sum
    sql: ${runs_allowed_in} ;;
    value_format: "#,##0"
  }

  dimension: sacrifice_flies_by_opposing_batter_in {
    hidden: yes
    type: number
    sql: ${TABLE}.sacrifice_flies_by_opposing_batter ;;
  }

  measure: sacrifice_flies_by_opposing_batter {
    view_label: "Pitching Stats"
    type: sum
    sql: ${sacrifice_flies_by_opposing_batter_in} ;;
    value_format: "#,##0"
  }

  dimension: sacrifices_by_opposing_batter_in {
    hidden: yes
    type: number
    sql: ${TABLE}.sacrifices_by_opposing_batter ;;
  }

  measure: sacrifices_by_opposing_batter {
    view_label: "Pitching Stats"
    type: sum
    sql: ${sacrifices_by_opposing_batter_in} ;;
    value_format: "#,##0"
  }

  dimension: saves_in {
    hidden: yes
    type: number
    sql: ${TABLE}.saves ;;
  }

  measure: saves {
    view_label: "Pitching Stats"
    type: sum
    sql: ${saves_in} ;;
    value_format: "#,##0"
  }

  dimension: shutouts_in {
    hidden: yes
    type: number
    sql: ${TABLE}.shutouts ;;
  }

  measure: shutouts {
    view_label: "Pitching Stats"
    type: sum
    sql: ${shutouts_in} ;;
    value_format: "#,##0"
  }

  dimension: strikeouts_pitching_in {
    hidden: yes
    type: number
    sql: ${TABLE}.strikeouts_pitching ;;
  }

  measure: strikeouts_pitching {
    view_label: "Pitching Stats"
    type: sum
    sql: ${strikeouts_pitching_in} ;;
    value_format: "#,##0"
  }

  dimension: walks_allowed_in {
    hidden: yes
    type: number
    sql: ${TABLE}.walks_allowed ;;
  }

  measure: walks_allowed {
    view_label: "Pitching Stats"
    type: sum
    sql: ${walks_allowed_in} ;;
    value_format: "#,##0"
  }

  dimension: wild_pitches_in {
    hidden: yes
    type: number
    sql: ${TABLE}.wild_pitches ;;
  }

  measure: wild_pitches {
    view_label: "Pitching Stats"
    type: sum
    sql: ${wild_pitches_in} ;;
    value_format: "#,##0"
  }

  dimension: wins_in {
    hidden: yes
    type: number
    sql: ${TABLE}.wins ;;
  }

  measure: wins {
    view_label: "Pitching Stats"
    type: sum
    sql: ${wins_in} ;;
    value_format: "#,##0"
  }
  ##################################################################################
  # END: Pitching #
  ##################################################################################

  ##################################################################################
  # START: General #
  ##################################################################################
  dimension: player_id {
    view_label: "General Information"
    type: string
    sql: ${TABLE}.player_id ;;
  }

  dimension: stint {
    view_label: "General Information"
    type: string
    sql: ${TABLE}.stint ;;
  }

  dimension: team_id {
    view_label: "General Information"
    type: string
    sql: ${TABLE}.team_id ;;
  }

  measure: teams {
    view_label: "General Information"
    type: count_distinct
    sql: ${team_id} ;;
    value_format: "#,##0"
  }

  dimension: year {
    view_label: "General Information"
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: seasons {
    view_label: "General Information"
    type: count_distinct
    sql: ${year} ;;
    value_format: "#,##0"
  }

  measure: count {
    view_label: "General Information"
    type: count
    drill_fields: []
  }

  dimension: primary_key {
    primary_key: yes
    view_label: "General Information"
    type: string
    sql: ${player_id} || '-' || ${team_id} || '-' || ${year}  || '-' ||  ${stint} ;;
  }
  ##################################################################################
  # END: General #
  ##################################################################################


}
