
#determino librerias que uso
library(xgboost)
library(plumber)

# df2 <-df[,variables_sig] 
# data_oos <- as.matrix(df2)
# oos_matrix <- xgb.DMatrix(data = data_oos, label = data_label_oos) 

#cargo modelo
Fcargamodelo <- function(){
    
    modelo_simple <- xgb.load('modelo_banc_cendeu')
}

#* Return the probability of default
#* @get /probability
function (score_cendeu, score_add_holder_cendeu, score_add_holder_comp, count_eval_mth, count_eval_mth_lag, age, civil_status, province, gender, economic_activity, job_start_day, q_dependents, income, nationality, studies, profession, shares_ip, hour, activity_afip, afip_start_date, code_monotax, code_gain, code_iva, main_act_start_date, email, stp, browser, browser_size, browser_version, campaign, channel_grouping, city, q_cookies_dist, q_DNIS_dist, q_tries, q_days_dist, q_days_weekend, q_dayweeks, pc_dayweeks, device_category, direct, java, keyword, language, medium, mobile_device_branding, mobile_device_info, mobile_device, touch, network_domain, network_location, new_visit, operating_system, region, screen_color, screen_resolution, source, business_days, trend_BB, main_classification_3, main_classification_50, main_classification_m, clas_50_BB, clas_50_BPP, clas_50_other, clas_50_TC, clas_BB, clas_BPP, clas_other, clas_TC, trend_entities, additional)
# {as.integer(score_cendeu)+1}
{ oos_matrix<-xgb.DMatrix(as.matrix({score_cendeu; score_add_holder_cendeu; score_add_holder_comp; count_eval_mth; count_eval_mth_lag; age; civil_status; province; gender; economic_activity; job_start_day; q_dependents; income; nationality; studies; profession; shares_ip; hour; activity_afip; afip_start_date; code_monotax; code_gain; code_iva; main_act_start_date; email; stp; browser; browser_size; browser_version; campaign; channel_grouping; city; q_cookies_dist; q_DNIS_dist; q_tries; q_days_dist; q_days_weekend; q_dayweeks; pc_dayweeks; device_category; direct; java; keyword; language; medium; mobile_device_branding; mobile_device_info; mobile_device; touch; network_domain; network_location; new_visit; operating_system; region; screen_color; screen_resolution; source; business_days; trend_BB; main_classification_3; main_classification_50; main_classification_m; clas_50_BB; clas_50_BPP; clas_50_other; clas_50_TC; clas_BB; clas_BPP; clas_other; clas_TC; trend_entities; additional}))
  predict(modelo_simple, newdata = oos_matrix)}


