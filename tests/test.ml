#use "core.ml";;

let expect condition = if not condition then failwith "fixture mismatch";;
let signal_case_1 = { demand = 73; capacity = 98; latency = 11; risk = 21; weight = 13 };;
expect (score signal_case_1 = 164);;
expect (classify signal_case_1 = "review");;
let signal_case_2 = { demand = 72; capacity = 80; latency = 25; risk = 9; weight = 8 };;
expect (score signal_case_2 = 154);;
expect (classify signal_case_2 = "review");;
let signal_case_3 = { demand = 93; capacity = 88; latency = 12; risk = 11; weight = 13 };;
expect (score signal_case_3 = 232);;
expect (classify signal_case_3 = "accept");;

#use "review.ml";;
let domain_review = { signal = 42; slack = 51; drag = 11; confidence = 61 };;
expect (review_score domain_review = 163);;
expect (review_lane domain_review = "ship");;
