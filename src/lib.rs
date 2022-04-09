#[no_mangle]
pub extern "C" fn vex_runtime_version() -> u32 {
	return 1;
}

#[cfg(test)]
mod tests {
    #[test]
    fn it_works() {
        let result = 2 + 2;
        assert_eq!(result, 4);
    }
}
