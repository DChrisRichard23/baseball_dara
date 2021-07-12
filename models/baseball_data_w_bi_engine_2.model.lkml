connection: "baseball_data_sandbox"

# include all the views
include: "/views/**/*.view"

datagroup: baseball_data_w_bi_engine_2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "0 seconds"
}

persist_with: baseball_data_w_bi_engine_2_default_datagroup

explore: all_stats_entire_season {
  persist_for: "0 seconds"
  join: inf_player {
    type: left_outer
    relationship: many_to_one
    sql_on: ${all_stats_entire_season.player_id} = ${inf_player.player_id} ;;
  }
  join: inf_player_year {
    type: left_outer
    relationship: many_to_one
    sql_on: ${all_stats_entire_season.player_id} = ${inf_player_year.player_id}
      AND ${all_stats_entire_season.year} = ${inf_player_year.year}  ;;
  }
  join: inf_team_year {
    type: left_outer
    relationship: many_to_one
    sql_on: ${all_stats_entire_season.team_id} = ${inf_team_year.team_id}
      AND ${all_stats_entire_season.year} = ${inf_team_year.year}  ;;
  }
  join: inf_stint {
    type: left_outer
    relationship: many_to_one
    sql_on: ${all_stats_entire_season.stint} = ${inf_stint.stint} ;;
  }
}
