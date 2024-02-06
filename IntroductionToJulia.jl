### A Pluto.jl notebook ###
# v0.19.36

#> [frontmatter]
#> title = "Using Julia"
#> layout = "layout.jlhtml"
#> tags = ["welcome"]
#> description = ""

using Markdown
using InteractiveUtils

# ╔═╡ f2953cd1-dcf6-4286-be57-6f096ebc7a44
using LinearAlgebra  # For performing linear algebra operations

# ╔═╡ ee5d60d0-5f0e-11eb-0574-6553f2bad5a5
begin
	using PlutoUI
	almost(text) = Markdown.MD(Markdown.Admonition("warning", "Almost there!", [text]))
	keep_working(text=md"The answer is not quite right.") = Markdown.MD(Markdown.Admonition("danger", "Keep working on it!", [text]));
	alert(text=md"The answer is not quite right.") = Markdown.MD(Markdown.Admonition("danger", "Alert!", [text]));
	exercise(text=md"The answer is not quite right.") = Markdown.MD(Markdown.Admonition("correct", "Exercise", [text]));
	correct(text=md"Great! You got the right answer! Let's move on to the next section.") = Markdown.MD(Markdown.Admonition("correct", "Got it!", [text]));
	hint(text) = Markdown.MD(Markdown.Admonition("hint", "Hint", [text]));
	TableOfContents()
end

# ╔═╡ d0e4dac0-5edb-11eb-0312-678a24ad0573
md"""
# Introduction to Julia
"""

# ╔═╡ 0f4bdbc0-5eea-11eb-35c3-d13c5d187b11
html"""
<center><img src=https://raw.githubusercontent.com/JuliaLang/julia-logo-graphics/b5551ca7946b4a25746c045c15fbb8806610f8d0/images/julia-logo-color.svg></center>
"""

# ╔═╡ 757a8fa2-78bb-495f-8a17-cb9dbae7c21c
branch = "aerospace engineering"

# ╔═╡ 5f6f01f0-5eee-11eb-090f-07ee55921d29
md"""## Why Julia?
Most **$(branch)** students and instructors are familiar with MATLAB.
>#### Key Points
>1. Its syntax is very similar to MATLAB's.
>2. It's faster than MATLAB and open-source.
>3. It has robust support for linear algebra, differential equations, and other fields of interest in science and engineering.
>4. It has [`Pluto.jl`](https://plutojl.org/), this nice notebook format for running experiments and giving instructive presentations.
"""

# ╔═╡ d0b4570d-ea2b-4a2e-bdc0-935f1bc6ae4c
md"""

!!! tip
	Try changing the words above and see what happens below the "**Why Julia?**" heading!

"""

# ╔═╡ f0111d90-5f09-11eb-3977-237d140094d2
md"---
## First steps
"

# ╔═╡ 4b5e3410-60c9-11eb-1874-f94b8c084017
md"""### Your first variables

Julia supports numbers and string types that would be useful to any mathematician, physicist, or engineer, such as real and complex numbers."""

# ╔═╡ 5ca1f2f5-64ee-4d6b-96bc-42a5bb63ba07
# Define "integer" number
Z = 2

# ╔═╡ 2509e0b0-5f0d-11eb-0b86-ef2bfdc59221
# Define "real" number
a = 1.5

# ╔═╡ f2b0d720-60a8-11eb-10b6-cd9caa5fa211
# Define "complex" number
z = 0.5 + 3im

# ╔═╡ 0d779460-60c0-11eb-2832-01d2249a84d4
cha = 'a'

# ╔═╡ fb879b7e-60a9-11eb-02ed-17dcdc4f6e13
name = "Arararagi"

# ╔═╡ c64cde23-4fb1-4879-9cf3-008eb56029b4
char1 = "A"

# ╔═╡ 12329650-60be-11eb-271e-1b4de0529ecb
md"You can check the type of a variable by calling `typeof()` on it. Try it out!"

# ╔═╡ 8dc81ef9-43e4-4762-b737-c975b5073b1e


# ╔═╡ 28cc16b0-60ab-11eb-0f1c-c930f5ba24d5
md"""
!!! tip
	The function `println()` or the `@show` macro will also display the output in a Pluto notebook.
"""

# ╔═╡ 4764baac-63e0-4aa7-b811-44ed72178709
println(z)

# ╔═╡ 757f0cbb-5ac5-4fa0-a811-69f8e3b8a494
@show z

# ╔═╡ a1dc2650-60c7-11eb-05f3-27d797041b10
md"Pluto notebooks accept only two types of expressions: either single-line blocks, or code-blocks wrapped in ```begin ... end```. In case of the latter, it returns the value of the last line of the code-block."

# ╔═╡ cb5bedd0-60c7-11eb-3f23-b73a12244a5c
# Sum complex numbers
r = a + z

# ╔═╡ f200cff0-60c7-11eb-38b8-21dbfc93d7a5
# Evaluate product of complex numbers
r^2

# ╔═╡ ac9b2c55-82ff-41b3-94f9-07123f577200
begin
	p = r^2 # Square complex number 'r'
	s = 2 * p # Double complex number 'p' (SHOWS THE OUTPUT OF THIS LAST LINE)
end

# ╔═╡ 0edc6e3b-5f1c-4ef5-837f-8c8843e82cca
md"""
!!! tip

	Use the **Live docs** feature at the bottom right to view documentation!
"""

# ╔═╡ 2dfe0f53-419e-4d6c-911d-6efa87bec5b4
md"### Text Entry and Images"

# ╔═╡ c8db041e-eef5-4591-b636-6653c35c071c
md"You can see how to enter text and images in a Pluto notebook by referring to the example below."

# ╔═╡ b1330c85-4d3f-4642-b021-f8cc245a773c
md"""

#### Hello, I'm a dog.

My name is Slash!

![](https://i.imgur.com/Yyzraet.jpg)

"""

# ╔═╡ 7395af00-60c7-11eb-0961-7704feee1971
md"""
---
## Syntax and structures"""

# ╔═╡ 76494920-5f0d-11eb-040e-63b283f2f031
md"### Your first array

Arrays are collections of elements which are stored in memory for 'instant' access. These are useful for performing iterative processes and collecting data for operations."

# ╔═╡ a3f4b6f0-5f23-11eb-09ba-0bed5674f6a9
md"1D array:"

# ╔═╡ 7cc1eeb0-5f0d-11eb-39c6-2715c40576b0
# Assign array of integers to variable 'xs'
xs = [ 5, 3, 4, 1, 7 ]

# ╔═╡ 567e1d90-60a8-11eb-0962-8dda3d9e9ee1
md"You can access elements of arrays by their indices shown in the following. Note that Julia follows the `1`-convention, like MATLAB."

# ╔═╡ 2fcdc9c0-60a8-11eb-0ccf-f3306ae99262
xs[1] # Access third element of 'xs' by indexing

# ╔═╡ 58a1bab0-60c5-11eb-0e62-13f4ac387d78
md"You can access the last element of an array by entering `end`."

# ╔═╡ 3a890590-60a9-11eb-11ab-f7401ed79d5e
xs[end] # Access last element of 'xs'

# ╔═╡ a88d2ad0-5f23-11eb-2e9b-45a2858e2db3
md"2D array:"

# ╔═╡ ac1c9320-5f23-11eb-1e76-cdcbc766ecec
ys = [ 1. 5. 6.; # 2D array defined by separating rows new lines with no commas 
	   3  7  2 ] # (optionally insert colons) 

# ╔═╡ 03b3a84e-60a8-11eb-03f1-9fcfda939baf
md" In Julia, all arrays are contiguously stored in memory in column-major order, and any arrangement is just superficial. The following two evaluations are exactly the same:" 

# ╔═╡ 39252540-60a8-11eb-15d8-29d96ef90ab9
ys[1,3] # Access 1st row, 3rd column entry of 'ys'

# ╔═╡ 428b4dd0-60a8-11eb-37c7-b7a0e89073bb
ys[5] # Access the same entry via the linear index.

# ╔═╡ e53b73a0-60c3-11eb-2248-e9d103a0f756
md"So you can flatten an array into a 1D array with the following syntax:"

# ╔═╡ f7402f00-60c3-11eb-385c-a51fa5470d44
ys[:] # Flatten 'ys' into a one-dimensional array

# ╔═╡ c4ea57b0-60c8-11eb-378a-1909c829443b
md"You can evaluate the length of an array by calling a _function_, which takes an input of some type and returns some output. In this case, the function is called `length()`, and is used as follows:"

# ╔═╡ e92a95e0-60c8-11eb-0d12-530d3a0b7e43
size(ys)

# ╔═╡ 11cb4800-60c9-11eb-23f8-bb51ae2aa733
hint(md"Try `length(ys)`. The answer may not be what you expect! If so, try `size(ys)`!")

# ╔═╡ 467059e0-5f2c-11eb-3d82-ed166a16040c
md"You can also transpose arrays of `Real` numbers by attaching `'` at the end of the array."

# ╔═╡ 50c32c60-5f2c-11eb-1130-2f9ceb28caea
ys' # Transpose 'ys' from (2,3) matrix into (3,2) matrix 

# ╔═╡ 09aae9c0-5fb4-11eb-2897-2dabe0b66efd
md"

!!! note 

	Notice the different types mentioned above, e.g. `LinearAlgebra.Adjoint`. For `Complex` numbers, this would take the complex conjugates of the entries and transpose them, which is the definition of the adjoint in matrix algebra over complex numbers. We will discuss type systems shortly.
"

# ╔═╡ 86ca9e10-60a8-11eb-2875-1ba8d4efbfcc
# Define matrix of complex numbers 'zs'
zs = [ 1 + 2im    3 - 5im ;
	   6 - 4im    4 - 8im 
	   2 + 3im    3 + 9im ]

# ╔═╡ b2ba5422-60a8-11eb-1492-9be6c3d59ce6
zs' # Transpose 'zs' similarly, but signs of the imaginary component are flipped.

# ╔═╡ 67088100-438a-4e24-9753-ca16baa8fb1d
md"#### Mutation"

# ╔═╡ 009c6385-e751-4ed1-ae62-e61541f960c0
md"""
You can also modify elements of arrays (called _mutation_). It is best to do any assignments to elements of arrays within the same block that defines the array to avoid confusion.
"""

# ╔═╡ d3f781d4-4762-4ef3-b795-94a88c31088f
begin 
	ks = zeros(9) # Define array
	ks[1] = 6.0 # Assign to first element of ys
	ks[3] = 9.0 # Assign to third element of ys
end

# ╔═╡ b2370549-9ceb-4936-9079-4aef964e9bc3
ks

# ╔═╡ 7fee99c9-c130-4c20-aa41-eb8803d1ae94
md"The `push!` function appends elements to the end of a previously defined array. This operation should also be performed in the same block that defines the array."

# ╔═╡ 4d130026-e7bf-4cc9-8192-3e4f9577b2f6
begin
    xxs = [5.0, 3.0] # Define array
	push!(xxs, 6.0, 7.0, 10.0) # Append elements to the end of xs
end

# ╔═╡ 6690c260-60a7-11eb-2559-e5ec21410cd4
md"""#### Ranges

Julia has syntactic sugar for common operations, such as evenly distributed ranges.
"""

# ╔═╡ 83899950-60a7-11eb-03c5-d5cf350d1de4
# Define a range of integers from 1 to 10
ms = 1:10

# ╔═╡ 891ac50e-60a7-11eb-02d7-91282f4149a5
md"You can convert these ranges into arrays by calling the function `collect()` on them."

# ╔═╡ 9bad4180-60a7-11eb-2129-b3b0e862f96a
collect(ms) # View elements individually by providing 'ms' as an input to 'collect'.

# ╔═╡ c30c72f2-60a7-11eb-20e0-23c12131e174
md"You can also call the `range(start, stop, length = n)` function to obtain a list of ``n`` equally spaced values between `start` and `stop`."

# ╔═╡ b8cc1700-60a7-11eb-178b-6b8abb196263
# Define equally spaced values between 0 and 1
ns = range(0, 1, length = 15)

# ╔═╡ 12c88f5e-60ab-11eb-36dd-5b296dabb6d1
collect(ns)

# ╔═╡ f2655c82-66ca-11eb-2cd6-512d918b9927
md"### Your first tuple
Tuples are containers of values of different types. ."

# ╔═╡ f7d47e82-66ca-11eb-2ff3-139f7d803ed6
# Define a tuple as a container of elements of various types.
tup = (1, 'a', 3.)

# ╔═╡ 01cfada8-66cb-11eb-2b97-69bb1a871daf
typeof(tup)

# ╔═╡ 0cc270d0-66cb-11eb-0471-db83d591c97c
md"Tuples share the same syntax as arrays for accessing the values at different indices."

# ╔═╡ 14eadf64-66cb-11eb-322b-194421bff2d2
tup[2]

# ╔═╡ f6060b08-91d6-4114-ba43-fa6ea9a6dea7
md"The important difference between tuples and arrays is that tuples are immutable, _i.e. their values cannot be changed._"

# ╔═╡ f2d9442b-72fa-49e2-b45d-2a352a29f247
tup[1] = 3  # Fails because tuple entries cannot be mutated

# ╔═╡ ed0d2c60-5f09-11eb-3346-73bcb62dc713
md"### Your first conditional

Standard Boolean expressions and evaluations are almost a necessity."

# ╔═╡ 3e238902-5f0a-11eb-27e9-61eb774d3620
# Assign 'true' value to variable 'lisa'. Try changing it to 'false' and observe the outputs below.
lisa = true

# ╔═╡ 5114d4ec-9ad5-4a51-aee5-435d898b36eb
md"The opposite of `true` is `false`, which is performed by prepending `!` to the variable."

# ╔═╡ 5a7de8bb-be80-4fc5-a676-d0d2da3edc5e
!lisa # Prepend ! to 'lisa' invert the value

# ╔═╡ 2309d252-5f0a-11eb-3db5-d16147bb8329
# Check if 'lisa' is false
if !lisa
	# If so, assign "Johnny" to variable
	out = "Johnny"
else
	# Otherwise, assign "Mark" to variable
	out = "Mark"
end

# ╔═╡ bc6a02a0-60c5-11eb-29cb-61a0c59aba34
md"Boolean logic operators `AND`, `OR`, and `XOR` are represented by infix `&&`, `||`, and the function `xor` respectively."

# ╔═╡ b1c45532-60c5-11eb-0af5-f393966e9cca
lisa && !lisa  # AND operation

# ╔═╡ b78850c0-60c5-11eb-2c40-dbb89a4b3d50
lisa || !lisa  # OR operation

# ╔═╡ a972e7ee-34b2-4930-8bea-e0faf4ff5a96
xor(lisa, !lisa) # XOR operation

# ╔═╡ e56e2f40-5f09-11eb-29a9-2db4ee699115
md"### Your first loops"

# ╔═╡ 72073c40-60c6-11eb-3fee-7b29c30c53c5
md"""#### While loops

A `while` loop executes a sequence of instructions until some termination criteria is satisfied.
"""

# ╔═╡ 9095ce60-60c6-11eb-38e4-8fe94df2e3f7
begin
	# Initialize j with value 0
	j = 0
	# Begin while loop, which iterates as long as the 'lisa' variable is true
	while lisa
		# Add 1 to current value of j. Equivalent to writing j = j + 1.
		j += 1
		# Check if j is less than or equalt o 10
		if j <= 10
			# Continue the loop if so
			continue
		else
			# Otherwise set 'lisa' as false
			lisa = false
		end
	end
end

# ╔═╡ a95edcd0-620f-11eb-083d-f5875b6a7965
j  # Check the value of variable 'j'

# ╔═╡ 591a2752-5f0a-11eb-3110-d17376a0e3a9
md"#### For loops

There are two ways to write `for` loops:
1. Expressions:"

# ╔═╡ 4faa88e0-5f0a-11eb-1d42-c51848513150
begin
	# Initialize k with value 0
	k = 0
	# Begin for loop, which takes each element of the array 'ms', referenced as the symbol 'var'.
	for var in ms
		# Add square of 'var' to current value of 'k'.
		k = k + var^2
	end
end

# ╔═╡ f90fb600-620f-11eb-3743-2fb2fc6c5937
k

# ╔═╡ 3d996449-22be-450d-becc-da6e3ac9d715
md"As a reminder, you can use the `@show` macro or `println()` function to show variables during iterations like loops."

# ╔═╡ 322b6a47-735c-41df-914c-dce7c055e7ee
begin 
	i = 0 # Initialize variable i with value 0 
	for j in 1:10
		i += j^2 # Add square of the number to current value of i
		
		@show i # Show the variable 'i' and its current value
		println(i) # Print only the value of 'i' without showing the variable
	end
	i # Display the final value of 'i' after the iteration at the top of the cell
end

# ╔═╡ 9408abc0-5f0a-11eb-35f2-cd1b2fba577b
md"""2. Comprehensions (usually nicer and more readable):
"""

# ╔═╡ 1b56b000-60c2-11eb-1878-59c6f42d7b01
md"A comprehension is similar to set-builder notation in mathematics, _e.g._:
```math
\{\ x^2 \mid x \in \{ 1,\ldots, N\}\ \}
```"

# ╔═╡ b52742e0-6210-11eb-0c91-9b91d44add7c
n = 10

# ╔═╡ ada17310-6210-11eb-07d9-b9245514422d
ps = [ x^2 for x in 1:n ] # Square each element 'x' in the range 1 ... n

# ╔═╡ ebc0b79f-e423-4460-b593-4fd58254cb60
md"""
!!! tip

	Note that summation is a common operation, and you could use Julia's `sum()` function which does the summing of the elements of an array of numbers for you.
"""

# ╔═╡ 9f4d3140-5f0a-11eb-3302-8f26d4b0a6b7
m = sum(ps) # Call function 'sum' on 'ps' to evaluate its sum

# ╔═╡ 108e4700-5f0f-11eb-34f3-2509225fb880
hint(md"This will still work if you remove the braces, and it'll be more efficient! 	
```julia
  m = sum(i^2 for i in ps)
```
This usage is called a _generator_ expression. Copy it to a new cell and try it out!")

# ╔═╡ dbc64c60-60c2-11eb-10cf-53542bfc9393
md"Let's try an array comprehension in 2 dimensions, represented by the following set-builder notation for sets ``A`` and ``B``:

```math
\{\ a^2 + b^2 \mid a \in A,\ b \in B\ \}
```"

# ╔═╡ e53a7eb0-60c2-11eb-3cf8-8ffd5bce1170
ab_sq = [ m^2 + n^2 for m in ms, n in ns ]

# ╔═╡ 0ee83402-60c3-11eb-36d5-1b957ebf3202
exercise(md"Create a 3-dimensional array in which the cubes of each element of three arrays of your choice are added.")

# ╔═╡ a0ed1080-5f08-11eb-0677-215e424d8299
md"### Your first function (and its methods)

Let's try to generalise our previous computations of summing natural numbers for some generic $n$, by using _functions_. 

>A function can be thought of as a machine that takes inputs (called arguments), processes them with some operations, and outputs corresponding values. Well-written functions always return the same values for the same inputs.

There are three ways to write functions:

1. 'Computer Science' syntax"

# ╔═╡ cb6cc78e-5f23-11eb-25a1-5db7e3643ceb
# Define function name 'sum_nat_num' with input argument 'n' of type 'Integer'
function sum_nat_num(n :: Integer)
	# Compute sum and assign to variable 'x'
	x = sum(1:n)

	# Return the sum
	return x
end

# ╔═╡ 21322d50-5f24-11eb-3e8e-092d8a5d1dfc
md"The `return` keyword is optional; Julia functions return the value of their last statement. The input `n`'s type is explicitly declared using the `:: Integer` syntax here. Now let's call it."

# ╔═╡ ccc71990-60a6-11eb-3a15-cfb659ca81cf
alert(md"""
Julia functions operate on the paradigm of _multiple dispatch_. Essentially, this means that you can have the same function names for different types and numbers of arguments, and the language will figure out which one to call. 
	
These function names then have associated _methods_, which dispatch based on the types of the inputs. Read more about it in the Julia documentation: [https://docs.julialang.org/en/v1/manual/methods/](https://docs.julialang.org/en/v1/manual/methods/)
""")

# ╔═╡ 7d655880-60ab-11eb-3ca3-6d436470c70b
md"_e.g._ Along with the above, we can also define the following function:"

# ╔═╡ 6f749ec0-60ab-11eb-33e7-9f8321e3b4d5
# Define function name 'sum_nat_num' with input arguments 'm','n' of Integer type
function sum_nat_num(n :: Integer, m :: Integer)
	# Compute sum of numbers from 1 to m + n (and automatically return)
	sum(1:m+n)
end

# ╔═╡ 3bd24730-5f24-11eb-34b6-b92b436ff3f0
sum_nat_num(10)

# ╔═╡ 82ac6142-60be-11eb-2dc6-9907d0f82ce8
md"Here we see that our function `sum_nat_num` has 2 methods, for our first and second implementations."

# ╔═╡ 19cf3f5a-75ce-43b7-a6df-68afc1699003
sum_nat_num(10)

# ╔═╡ b4703a20-60ab-11eb-2ac8-bdd636c0b62c
sum_nat_num(10, 5)

# ╔═╡ bcaedd30-60ac-11eb-3ee2-638d5a90dcff
md"However, if we try to call any of these functions with inputs that are not `Integer`s, then it will throw a `MethodError`."

# ╔═╡ d3c422a0-60ac-11eb-0ded-bd235955795e
# Error because 'sum_nat_num' was defined for 'Integer', and we passed Float64.
sum_nat_num(10.)

# ╔═╡ d9512540-5f23-11eb-32f6-eb121a922fb7
md"2. 'Mathematical' syntax like $f(x) = y$"

# ╔═╡ e0f1d010-5f23-11eb-2146-5fd2ca7a3e40
# One-line definition 'sum_nat_num_math' which takes input 'n' and returns the sum.
sum_nat_num_math(n :: Integer) = sum(1:n)

# ╔═╡ 40067b00-5f24-11eb-1dec-611fc8bd6736
sum_nat_num_math(10)

# ╔═╡ 4f737f0e-5f25-11eb-305e-fd2c5053f59a
md"3. ``\lambda``-expressions (also called closures or anonymous functions)"

# ╔═╡ 5d83f5d0-5f25-11eb-0a9b-890e2b3f4ff2
sum_nat_num_λ = n -> sum(1:n)

# ╔═╡ 661468c0-5f2e-11eb-1272-774164f1904d
md"Notice how `sum_nat_num_λ` is now denoted as a _variable_ with a function assigned to it as a value. However, you cannot change its value. You can still use it like a function."

# ╔═╡ 5903aec0-5f2e-11eb-2411-25a29958ce46
sum_nat_num_λ(10)

# ╔═╡ 94f0f4a0-5f25-11eb-20b1-3d1cf2900c0b
alert(
md"""``\lambda``-expressions have a specific usage, and are not encouraged for writing generic functions. 
	
This specific usage is for defining temporary functions to perform small operations that do not require function definitions of their own generically.
""")

# ╔═╡ 048cf480-60ac-11eb-3842-3bde08089806
md"_e.g._ Summing an array of squares of natural numbers using the `sum(f, xs)` method, which calls the function `f` on each entry of the array `xs`, and then sums over it:"


# ╔═╡ 0e62a7c0-60ac-11eb-0df9-cb94b53a3f84
sum(x -> x^2, 1:n)

# ╔═╡ f6170fc0-60ac-11eb-0e4f-6d2c6ffe24b7
exercise(md"Define your own `sum_nat_num` which accepts an argument of type `Real`.")

# ╔═╡ 8bc4e432-60ac-11eb-3975-d97e7cd1b013
md"#### Broadcasting

Julia has a MATLAB-esque style of working with functions and arrays, in which a function meant for scalar values can be _broadcasted_ over an array via the use of dot (`.`) syntax, as shown below."

# ╔═╡ abc00e90-60c0-11eb-361e-59f06c853244
a^2

# ╔═╡ 7fca2e10-60ac-11eb-1602-af26e67042f9
ps.^2

# ╔═╡ b4792e40-60c0-11eb-1543-af2a0e019f9f
sum(ps.^2)

# ╔═╡ 0020f46e-8995-4d05-932d-be4feb827481
md"Let's demonstrate this operation with a function we define ourselves:"

# ╔═╡ c7ebaa72-60c0-11eb-1247-8753c461b637
doubleplusgood(x) = 2 * x + 1984

# ╔═╡ 0b8793cc-e5df-4589-8925-4334fd53c00d
md"This works on scalars."

# ╔═╡ 1fdec5a0-60c1-11eb-2dae-1d3e6868cc5f
doubleplusgood(a) # Works because adding two numbers.

# ╔═╡ a9983e6d-6cef-4f46-a97a-8d59880ba90e
md"But it doesn't work on arrays."

# ╔═╡ e95279dc-c31b-45ac-812b-c794917c84c8
doubleplusgood(ps) # Fails because trying to add vector and number.

# ╔═╡ 84a6d613-aa5d-4718-bfa6-87584cfbfdb3
md"Use the dot syntax to broadcast it on arrays."

# ╔═╡ daeec300-60c0-11eb-03ad-7f2e6a5ac4a5
doubleplusgood.(ps) # Use broadcasting by appending '.' after the function name

# ╔═╡ 26567468-b89f-4b02-8a37-acfa5b2ebc36
md"#### Best Practices"

# ╔═╡ de3207b8-6850-400c-a8da-4d9167f10bc0
md"""
A function definition should **only** use its input arguments for performing computations. First, let's define some (global) variables.
"""

# ╔═╡ 00fd4dcd-9986-467c-b588-d92534232c6c
begin
	V1 = 200. # Speed
	SFC = 0.55 # Specific fuel consumption
	LD = 20. # Lift-to-drag ratio
	R1 = 5000 # Some range
	R2 = 4000 # Another range
end

# ╔═╡ ac20ecb8-5429-432f-a8b9-ad5f5a8988dd
md"Here's an example of a bad function definition."

# ╔═╡ b83a265f-ca29-47b7-b3f4-9a61fa033e72
function bad_breguet_range(R, V, SFC, LD)
	WF = exp(-R1 * SFC / (V * LD))
	return WF
end

# ╔═╡ 04c079c6-5218-4f96-8794-0d91cc5f1df0
md"""This definition is bad because it calls the global variable `R1` and ignores the input argument `R`. You can tell this because `R1` variable used in this definition is underlined, while the others are not. 

!!! tip
	(`Ctrl+Click` or `Cmd+Click` on `R1` in the function definition to jump to the variable!)
"""

# ╔═╡ 1dc58ecc-6ae1-445b-91b2-5b968567e7e0
bad_breguet_range(R1, V1, SFC, LD)

# ╔═╡ a4d9635e-01cd-4326-bc92-9573baeda674
bad_breguet_range(R2, V1, SFC, LD)

# ╔═╡ af8fc523-a959-4c6a-9dd5-fc9f26b5b12b
md"Notice how if you change `R1` to `R2` while calling the function, the result doesn't change as it should."

# ╔═╡ e1ea353d-f239-46e9-846f-95263652b447
md"The following definition is good because it only depends on the input arguments. (no underlines!)"

# ╔═╡ 3277dd35-3dfb-4598-9660-b6da6b3bc928
function breguet_range(R, V, SFC, LD)
	WF = exp(-R * SFC / (V * LD)) # Evaluate weight fraction
	return WF
end

# ╔═╡ c8b76a01-11cf-4e2c-b612-a39bdbe68045
breguet_range(R1, V1, SFC, LD)

# ╔═╡ e840fee1-6ddb-4d19-b2f4-5da9ecb673c0
breguet_range(R2, V1, SFC, LD)

# ╔═╡ c54ee6b9-f0d0-4519-ae0a-f4aee75e0ef3
md"""### Tab completion

A convenient feature is that you can complete a function or variable by typing a part of it and pressing the `[tab]` key. Try it out on the cell below by pressing `[tab]` after placing your cursor at the end of the `breg` and `R`.

"""

# ╔═╡ eb5412da-8d64-4354-bc8c-c53441d5516f
breg

# ╔═╡ 0fa8552d-2277-4d7f-a76d-46d1a1e7b24f
R

# ╔═╡ 93065a9c-0016-4e4b-ae1b-4d489af658ba
md"""
## Linear Algebra

Julia has very strong support for linear algebra, using the `LinearAlgebra` package.
"""

# ╔═╡ 51626cc2-0946-4dd8-8a64-2d6549c94356
md"### Definitions"

# ╔═╡ 1c794ccc-cf88-499d-99a0-8ab1f0fc24fd
md"Vectors are just one-dimensional arrays."

# ╔═╡ 99653bfb-2516-4a30-97d6-b6f1053a43b3
b = rand(5)  # Generate a random 1D vector

# ╔═╡ e35a8c3d-33f0-471b-b5b1-3dfc031630ba
typeof(b) # Check its type

# ╔═╡ cb3f994a-7035-4738-a8bd-9345869e2376
md"Matrices are two-dimensional arrays."

# ╔═╡ e562f30d-674d-42b0-8072-b9dee633715f
A = rand(5,5) # Generate a random 2D matrix

# ╔═╡ cdcb2736-d356-4f68-a27f-7f86bcac905d
md"### Operations"

# ╔═╡ 1b6f9660-2799-4b4a-ac92-36019c21e79d
md"Matrix multiplication"

# ╔═╡ 6ab0799f-73c2-412c-8d34-8136e3a1c489
A * b  # Matrix-vector product

# ╔═╡ 85934751-396e-43e5-85b5-868f3dc7836d
md"Matrix inversion: $A^{-1}$"

# ╔═╡ bfaba7dc-ede5-4a1f-901a-194458b33584
A^(-1)  # Matrix inverse, inv(A) also works

# ╔═╡ 5a04b000-8b31-48b4-ba05-8f0755e6b1cc
md"Solution of linear systems:

```math

Ax = b \implies x = A^{-1}b
```"

# ╔═╡ 9c97ddaa-e2dd-4eda-b9b7-8e8e18d414f0
x = A \ b # Solution of linear system Ax = b

# ╔═╡ 9a66833e-2a42-4f7d-926b-e51af09fed50
md"Vector and matrix norms:

```math
\begin{align}
	||x||, ||A||
\end{align}
```
"

# ╔═╡ 7f3a4610-cbbf-482a-9119-59db34c393ae
norm(x) # Euclidean norm of vector

# ╔═╡ 19f9c192-d736-4f72-9a76-c7fb68e34dd4
norm(A) # Euclidean norm of matrix

# ╔═╡ 0ffcf153-5b5a-4514-a0bd-9b52c59493e7
md"### Eigendecomposition"

# ╔═╡ b09d545a-eda1-487f-a52d-952b0a005f0c
md"An eigenvalue problem for a matrix $A$ is defined by the following equation:
```math
\mathrm{det}(\mathbf A - \lambda \mathbf I) = \mathbf 0
```
Evaluating the determinant gives a characteristic polynomial equation $p(\lambda) = 0$, whose roots $\lambda$ are the _eigenvalues_ of the matrix $A$.

The set of _eigenvectors_ $\{\mathbf x\}$ is given by the expression for each pair of eigenvalue and its corresponding eigenvector:

```math 
\mathbf A\mathbf x = \lambda\mathbf x
```

Julia provides the `eigen(A :: Matrix)` function, which will perform the computation for you and return the eigenvalues and eigenvectors.
"

# ╔═╡ c6217195-f972-42fc-b289-a610b8f7e69a
# Eigendecomposition of matrix into eigenvalues and eigenvectors 
evals, evecs = eigen(A) 

# ╔═╡ c36b2c77-8ce9-4f2c-baca-12dfdced5222
md"Eigenvalues:"

# ╔═╡ a97ae53d-8010-4dcc-8647-b661d874f6f8
evals # Check eigenvalues

# ╔═╡ c745edae-bc7b-489f-bbc3-bd89fdc190e1
eigvals(A) # Function for getting only eigenvalues

# ╔═╡ e745b35e-1949-4f83-9c0a-23c6d44b4304
md"Eigenvectors:"

# ╔═╡ 234ef92a-85f3-4f49-a866-150d48714915
evecs # Check eigenvectors

# ╔═╡ 1cfeefa0-dd07-47bf-a4e8-b423e573fa6d
eigvecs(A) # Function for getting only eigenvectors

# ╔═╡ 545070b0-60bf-11eb-3a96-796bfb561610
md"""
---

## Useful Links

1. [Julia Documentation](https://docs.julialang.org/en/v1/)

2. [Linear Algebra Documentation](https://docs.julialang.org/en/v1/stdlib/LinearAlgebra/)

#### Cheatsheets

1. [MATLAB-Julia-Python comparative cheatsheet by QuantEcon group](https://cheatsheets.quantecon.org/)

2. [Fastrack to Julia](https://juliadocs.github.io/Julia-Cheat-Sheet/)
"""

# ╔═╡ efa35d10-5f08-11eb-2108-8373143309cb
#= html"""<style>
main {
    max-width: 60%;
}
""" =#

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.39"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

[[AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.1"

[[Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "0f4e115f6f34bbe43c19751c90a38b2f380637b9"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.3"

[[CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.0.2+0"

[[Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"

[[FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "c47c5fa4c5308f27ccaac35504858d8914e102f9"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.4"

[[IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "f7be53659ab06ddc986428d3a9dcc95f6fa6705a"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.2"

[[InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "3c837543ddb02250ef42f4738347454f95079d4e"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.3"

[[LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.3"

[[LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "7.84.0+0"

[[LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.10.2+0"

[[Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.2+0"

[[Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2022.10.11"

[[NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.21+4"

[[Parsers]]
deps = ["Dates"]
git-tree-sha1 = "1285416549ccfcdf0c50d4997a94331e88d68413"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.3.1"

[[Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "FileWatching", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.9.0"

[[PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "UUIDs"]
git-tree-sha1 = "8d1f54886b9037091edf146b517989fc4a09efec"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.39"

[[Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[SparseArrays]]
deps = ["Libdl", "LinearAlgebra", "Random", "Serialization", "SuiteSparse_jll"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
version = "1.9.0"

[[SuiteSparse_jll]]
deps = ["Artifacts", "Libdl", "Pkg", "libblastrampoline_jll"]
uuid = "bea87d4a-7f5b-5778-9afe-8cc45184846c"
version = "5.10.1+6"

[[TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.3"

[[Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.0"

[[Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[Tricks]]
git-tree-sha1 = "6bac775f2d42a611cdfcd1fb217ee719630c4175"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.6"

[[UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.13+0"

[[libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.8.0+0"

[[nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.48.0+0"

[[p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.4.0+0"
"""

# ╔═╡ Cell order:
# ╟─d0e4dac0-5edb-11eb-0312-678a24ad0573
# ╟─0f4bdbc0-5eea-11eb-35c3-d13c5d187b11
# ╠═5f6f01f0-5eee-11eb-090f-07ee55921d29
# ╠═757a8fa2-78bb-495f-8a17-cb9dbae7c21c
# ╟─d0b4570d-ea2b-4a2e-bdc0-935f1bc6ae4c
# ╟─f0111d90-5f09-11eb-3977-237d140094d2
# ╟─4b5e3410-60c9-11eb-1874-f94b8c084017
# ╠═5ca1f2f5-64ee-4d6b-96bc-42a5bb63ba07
# ╠═2509e0b0-5f0d-11eb-0b86-ef2bfdc59221
# ╠═f2b0d720-60a8-11eb-10b6-cd9caa5fa211
# ╠═0d779460-60c0-11eb-2832-01d2249a84d4
# ╠═fb879b7e-60a9-11eb-02ed-17dcdc4f6e13
# ╠═c64cde23-4fb1-4879-9cf3-008eb56029b4
# ╟─12329650-60be-11eb-271e-1b4de0529ecb
# ╠═8dc81ef9-43e4-4762-b737-c975b5073b1e
# ╟─28cc16b0-60ab-11eb-0f1c-c930f5ba24d5
# ╠═4764baac-63e0-4aa7-b811-44ed72178709
# ╠═757f0cbb-5ac5-4fa0-a811-69f8e3b8a494
# ╟─a1dc2650-60c7-11eb-05f3-27d797041b10
# ╠═cb5bedd0-60c7-11eb-3f23-b73a12244a5c
# ╠═f200cff0-60c7-11eb-38b8-21dbfc93d7a5
# ╠═ac9b2c55-82ff-41b3-94f9-07123f577200
# ╟─0edc6e3b-5f1c-4ef5-837f-8c8843e82cca
# ╟─2dfe0f53-419e-4d6c-911d-6efa87bec5b4
# ╟─c8db041e-eef5-4591-b636-6653c35c071c
# ╠═b1330c85-4d3f-4642-b021-f8cc245a773c
# ╟─7395af00-60c7-11eb-0961-7704feee1971
# ╟─76494920-5f0d-11eb-040e-63b283f2f031
# ╟─a3f4b6f0-5f23-11eb-09ba-0bed5674f6a9
# ╠═7cc1eeb0-5f0d-11eb-39c6-2715c40576b0
# ╟─567e1d90-60a8-11eb-0962-8dda3d9e9ee1
# ╠═2fcdc9c0-60a8-11eb-0ccf-f3306ae99262
# ╟─58a1bab0-60c5-11eb-0e62-13f4ac387d78
# ╠═3a890590-60a9-11eb-11ab-f7401ed79d5e
# ╟─a88d2ad0-5f23-11eb-2e9b-45a2858e2db3
# ╠═ac1c9320-5f23-11eb-1e76-cdcbc766ecec
# ╟─03b3a84e-60a8-11eb-03f1-9fcfda939baf
# ╠═39252540-60a8-11eb-15d8-29d96ef90ab9
# ╠═428b4dd0-60a8-11eb-37c7-b7a0e89073bb
# ╟─e53b73a0-60c3-11eb-2248-e9d103a0f756
# ╠═f7402f00-60c3-11eb-385c-a51fa5470d44
# ╟─c4ea57b0-60c8-11eb-378a-1909c829443b
# ╠═e92a95e0-60c8-11eb-0d12-530d3a0b7e43
# ╟─11cb4800-60c9-11eb-23f8-bb51ae2aa733
# ╟─467059e0-5f2c-11eb-3d82-ed166a16040c
# ╠═50c32c60-5f2c-11eb-1130-2f9ceb28caea
# ╟─09aae9c0-5fb4-11eb-2897-2dabe0b66efd
# ╠═86ca9e10-60a8-11eb-2875-1ba8d4efbfcc
# ╠═b2ba5422-60a8-11eb-1492-9be6c3d59ce6
# ╟─67088100-438a-4e24-9753-ca16baa8fb1d
# ╟─009c6385-e751-4ed1-ae62-e61541f960c0
# ╠═d3f781d4-4762-4ef3-b795-94a88c31088f
# ╠═b2370549-9ceb-4936-9079-4aef964e9bc3
# ╟─7fee99c9-c130-4c20-aa41-eb8803d1ae94
# ╠═4d130026-e7bf-4cc9-8192-3e4f9577b2f6
# ╟─6690c260-60a7-11eb-2559-e5ec21410cd4
# ╠═83899950-60a7-11eb-03c5-d5cf350d1de4
# ╟─891ac50e-60a7-11eb-02d7-91282f4149a5
# ╠═9bad4180-60a7-11eb-2129-b3b0e862f96a
# ╟─c30c72f2-60a7-11eb-20e0-23c12131e174
# ╠═b8cc1700-60a7-11eb-178b-6b8abb196263
# ╠═12c88f5e-60ab-11eb-36dd-5b296dabb6d1
# ╟─f2655c82-66ca-11eb-2cd6-512d918b9927
# ╠═f7d47e82-66ca-11eb-2ff3-139f7d803ed6
# ╠═01cfada8-66cb-11eb-2b97-69bb1a871daf
# ╟─0cc270d0-66cb-11eb-0471-db83d591c97c
# ╠═14eadf64-66cb-11eb-322b-194421bff2d2
# ╟─f6060b08-91d6-4114-ba43-fa6ea9a6dea7
# ╠═f2d9442b-72fa-49e2-b45d-2a352a29f247
# ╟─ed0d2c60-5f09-11eb-3346-73bcb62dc713
# ╠═3e238902-5f0a-11eb-27e9-61eb774d3620
# ╟─5114d4ec-9ad5-4a51-aee5-435d898b36eb
# ╠═5a7de8bb-be80-4fc5-a676-d0d2da3edc5e
# ╠═2309d252-5f0a-11eb-3db5-d16147bb8329
# ╟─bc6a02a0-60c5-11eb-29cb-61a0c59aba34
# ╠═b1c45532-60c5-11eb-0af5-f393966e9cca
# ╠═b78850c0-60c5-11eb-2c40-dbb89a4b3d50
# ╠═a972e7ee-34b2-4930-8bea-e0faf4ff5a96
# ╟─e56e2f40-5f09-11eb-29a9-2db4ee699115
# ╟─72073c40-60c6-11eb-3fee-7b29c30c53c5
# ╠═9095ce60-60c6-11eb-38e4-8fe94df2e3f7
# ╠═a95edcd0-620f-11eb-083d-f5875b6a7965
# ╟─591a2752-5f0a-11eb-3110-d17376a0e3a9
# ╠═4faa88e0-5f0a-11eb-1d42-c51848513150
# ╠═f90fb600-620f-11eb-3743-2fb2fc6c5937
# ╟─3d996449-22be-450d-becc-da6e3ac9d715
# ╠═322b6a47-735c-41df-914c-dce7c055e7ee
# ╟─9408abc0-5f0a-11eb-35f2-cd1b2fba577b
# ╟─1b56b000-60c2-11eb-1878-59c6f42d7b01
# ╠═b52742e0-6210-11eb-0c91-9b91d44add7c
# ╠═ada17310-6210-11eb-07d9-b9245514422d
# ╟─ebc0b79f-e423-4460-b593-4fd58254cb60
# ╠═9f4d3140-5f0a-11eb-3302-8f26d4b0a6b7
# ╟─108e4700-5f0f-11eb-34f3-2509225fb880
# ╟─dbc64c60-60c2-11eb-10cf-53542bfc9393
# ╠═e53a7eb0-60c2-11eb-3cf8-8ffd5bce1170
# ╟─0ee83402-60c3-11eb-36d5-1b957ebf3202
# ╟─a0ed1080-5f08-11eb-0677-215e424d8299
# ╠═cb6cc78e-5f23-11eb-25a1-5db7e3643ceb
# ╟─21322d50-5f24-11eb-3e8e-092d8a5d1dfc
# ╠═3bd24730-5f24-11eb-34b6-b92b436ff3f0
# ╟─ccc71990-60a6-11eb-3a15-cfb659ca81cf
# ╟─7d655880-60ab-11eb-3ca3-6d436470c70b
# ╠═6f749ec0-60ab-11eb-33e7-9f8321e3b4d5
# ╟─82ac6142-60be-11eb-2dc6-9907d0f82ce8
# ╠═19cf3f5a-75ce-43b7-a6df-68afc1699003
# ╠═b4703a20-60ab-11eb-2ac8-bdd636c0b62c
# ╟─bcaedd30-60ac-11eb-3ee2-638d5a90dcff
# ╠═d3c422a0-60ac-11eb-0ded-bd235955795e
# ╟─d9512540-5f23-11eb-32f6-eb121a922fb7
# ╠═e0f1d010-5f23-11eb-2146-5fd2ca7a3e40
# ╠═40067b00-5f24-11eb-1dec-611fc8bd6736
# ╟─4f737f0e-5f25-11eb-305e-fd2c5053f59a
# ╠═5d83f5d0-5f25-11eb-0a9b-890e2b3f4ff2
# ╟─661468c0-5f2e-11eb-1272-774164f1904d
# ╠═5903aec0-5f2e-11eb-2411-25a29958ce46
# ╟─94f0f4a0-5f25-11eb-20b1-3d1cf2900c0b
# ╟─048cf480-60ac-11eb-3842-3bde08089806
# ╠═0e62a7c0-60ac-11eb-0df9-cb94b53a3f84
# ╟─f6170fc0-60ac-11eb-0e4f-6d2c6ffe24b7
# ╟─8bc4e432-60ac-11eb-3975-d97e7cd1b013
# ╠═abc00e90-60c0-11eb-361e-59f06c853244
# ╠═7fca2e10-60ac-11eb-1602-af26e67042f9
# ╠═b4792e40-60c0-11eb-1543-af2a0e019f9f
# ╟─0020f46e-8995-4d05-932d-be4feb827481
# ╠═c7ebaa72-60c0-11eb-1247-8753c461b637
# ╟─0b8793cc-e5df-4589-8925-4334fd53c00d
# ╠═1fdec5a0-60c1-11eb-2dae-1d3e6868cc5f
# ╟─a9983e6d-6cef-4f46-a97a-8d59880ba90e
# ╠═e95279dc-c31b-45ac-812b-c794917c84c8
# ╟─84a6d613-aa5d-4718-bfa6-87584cfbfdb3
# ╠═daeec300-60c0-11eb-03ad-7f2e6a5ac4a5
# ╟─26567468-b89f-4b02-8a37-acfa5b2ebc36
# ╟─de3207b8-6850-400c-a8da-4d9167f10bc0
# ╠═00fd4dcd-9986-467c-b588-d92534232c6c
# ╟─ac20ecb8-5429-432f-a8b9-ad5f5a8988dd
# ╠═b83a265f-ca29-47b7-b3f4-9a61fa033e72
# ╟─04c079c6-5218-4f96-8794-0d91cc5f1df0
# ╠═1dc58ecc-6ae1-445b-91b2-5b968567e7e0
# ╠═a4d9635e-01cd-4326-bc92-9573baeda674
# ╟─af8fc523-a959-4c6a-9dd5-fc9f26b5b12b
# ╟─e1ea353d-f239-46e9-846f-95263652b447
# ╠═3277dd35-3dfb-4598-9660-b6da6b3bc928
# ╠═c8b76a01-11cf-4e2c-b612-a39bdbe68045
# ╠═e840fee1-6ddb-4d19-b2f4-5da9ecb673c0
# ╟─c54ee6b9-f0d0-4519-ae0a-f4aee75e0ef3
# ╠═eb5412da-8d64-4354-bc8c-c53441d5516f
# ╠═0fa8552d-2277-4d7f-a76d-46d1a1e7b24f
# ╟─93065a9c-0016-4e4b-ae1b-4d489af658ba
# ╠═f2953cd1-dcf6-4286-be57-6f096ebc7a44
# ╟─51626cc2-0946-4dd8-8a64-2d6549c94356
# ╟─1c794ccc-cf88-499d-99a0-8ab1f0fc24fd
# ╠═99653bfb-2516-4a30-97d6-b6f1053a43b3
# ╠═e35a8c3d-33f0-471b-b5b1-3dfc031630ba
# ╟─cb3f994a-7035-4738-a8bd-9345869e2376
# ╠═e562f30d-674d-42b0-8072-b9dee633715f
# ╟─cdcb2736-d356-4f68-a27f-7f86bcac905d
# ╟─1b6f9660-2799-4b4a-ac92-36019c21e79d
# ╠═6ab0799f-73c2-412c-8d34-8136e3a1c489
# ╟─85934751-396e-43e5-85b5-868f3dc7836d
# ╠═bfaba7dc-ede5-4a1f-901a-194458b33584
# ╟─5a04b000-8b31-48b4-ba05-8f0755e6b1cc
# ╠═9c97ddaa-e2dd-4eda-b9b7-8e8e18d414f0
# ╟─9a66833e-2a42-4f7d-926b-e51af09fed50
# ╠═7f3a4610-cbbf-482a-9119-59db34c393ae
# ╠═19f9c192-d736-4f72-9a76-c7fb68e34dd4
# ╟─0ffcf153-5b5a-4514-a0bd-9b52c59493e7
# ╟─b09d545a-eda1-487f-a52d-952b0a005f0c
# ╠═c6217195-f972-42fc-b289-a610b8f7e69a
# ╟─c36b2c77-8ce9-4f2c-baca-12dfdced5222
# ╠═a97ae53d-8010-4dcc-8647-b661d874f6f8
# ╠═c745edae-bc7b-489f-bbc3-bd89fdc190e1
# ╟─e745b35e-1949-4f83-9c0a-23c6d44b4304
# ╠═234ef92a-85f3-4f49-a866-150d48714915
# ╠═1cfeefa0-dd07-47bf-a4e8-b423e573fa6d
# ╟─545070b0-60bf-11eb-3a96-796bfb561610
# ╟─efa35d10-5f08-11eb-2108-8373143309cb
# ╟─ee5d60d0-5f0e-11eb-0574-6553f2bad5a5
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
