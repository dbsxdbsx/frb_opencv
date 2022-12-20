pub fn test_no_param_1() -> String {
    return "test_no_param_1".to_owned();
}

pub fn test_string_int_1(s: String, i: u32) -> String {
    format!("{}_{}", s, i)
}
