contract A {
	function foo() external virtual pure returns(uint) { return 5; }
}
contract B is A {
	uint public override foo;
}
contract C is A {
	function foo() external virtual override pure returns(uint) { return 5; }
}
contract X is B, C {
	uint public override foo;
}
// ----
// DeclarationError: (245-269): Identifier already declared.
