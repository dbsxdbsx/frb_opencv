pub fn test_no_param_2() -> String {
    return "test_no_param_2".to_owned();
}

pub fn test_string_int_2(s: String, i: u32) -> String {
    format!("{}_{}", s, i)
}
