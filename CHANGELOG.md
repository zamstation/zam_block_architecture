# 0.3.0
- The `valueGenerator` callback in `FromValueRule` can now return `null`.
- Dependency Updates:
	- `flutter 3.0.0`
	- `dart 2.17.0`
	- `zam_core 0.7.0`
	- `zam_command_pattern 0.3.0`
	- `lints 2.0.0`
	- `zam_test 0.5.0`

# 0.2.0
- Dependency Updates:
	- `zam_core 0.6.0`.
	- `zam_test 0.4.0`.
	- `zam_command_pattern 0.2.0`.

# 0.1.0
- Updated dependency: 
	- `zam_core 0.5.0`.
	- `zam_command_pattern 0.1.0`.
	- `dart sdk ">=2.13.0 <3.0.0"`.

# 0.0.1
- Includes `Block`, `Logic`, `Rule`, `Sanitizer`.
- Includes `Block` utilities:
	- `SingleChildBlock`
	- `MultiChildBlock`
	- `ContainerBlock`
	- `CompositeBlock`
	- `DynamicMultiChildBlock`
	- `FirstErrorlessBlock`
	- `RunOneBlock`
	- `TransformableCompositeBlock`
- Includes `Logic` utilities:
	- `Logic`
	- `ParameterizedLogic`
- Includes `Rule` utilities:
	- `SimpleRule`
	- `CustomRule`
	- `ContainerRule`
	- `CompositeRule`
	- `ListRule`
	- `SatisfyAllRule`
	- `SatisfyAnyRule`
	- `FromValueRule`
	- `FromValueCustomRule`
	- `ValidationRule`
	- `TransformableCompositeRule`
- Includes `Sanitizer` utilities:
	- `BasicSanitizer`
	- `ContainerSanitizer`
	- `ListSanitizer`
- Includes `BlockBuilder`, `SanitizerBuilder`.
- Includes `BlockResponse`, `RuleResponse`.
- Includes `ExceptionThrowingAbility`, `DetailedExceptionThrowingAbility`.
