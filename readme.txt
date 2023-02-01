terraform commands:
                   - terraform plan (help you to check file output of terraform)

-terraform lets you create two file using .tf (ext) and also .tf.json(ext)
-everblock name is needs to be different 
-every file will execute in alphabetical order

--in interactive mode it will take output from you but you can use this command to execute varibables while executing the terraform commands
(ref from ../hello-varibable/varibable.tf)
------ terraform plan -var "username=dhaval"
------ terraform plan -var "username=["dhaval","sinh"]

--terraform types 
--Types and Values
--The result of an expression is a value. All values have a type, which dictates where that value can be used and what transformations can be applied to it.

:) Types
--The Terraform language uses the following types for its values:

--> string: a sequence of Unicode characters representing some text, like "hello".
--> number: a numeric value. The number type can represent both whole numbers like 15 and fractional values like 6.283185.
--> bool: a boolean value, either true or false. bool values can be used in conditional logic.
--> list (or tuple): a sequence of values, like ["us-west-1a", "us-west-1c"]. Elements in a list or tuple are identified by consecutive whole numbers, starting with zero.
--> map (or object): a group of values identified by named labels, like {name = "Mabel", age = 52}.
Strings, numbers, and bools are sometimes called primitive types. Lists/tuples and maps/objects are sometimes called complex types, structural types, or collection types.

--Finally, there is one special value that has no type:
--> null: a value that represents absence or omission. If you set an argument of a resource to null, Terraform behaves as though you had completely omitted it — it will use the argument's default value if it has one, or raise an error if the argument is mandatory. null is most useful in conditional expressions, so you can dynamically omit an argument if a condition isn't met.
