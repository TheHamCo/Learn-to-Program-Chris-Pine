def do_until_false(input1, proc)
	input = input1
	output = input1

	while output
		input = output
		output = proc.call(input)
	end
	input
end

build_sqs = Proc.new do|array|
	last = array.last
	if last <= 0
		false
	else
		array.pop
		array.push(last*last)
		array.push(last-1)
	end
end

puts do_until_false([12],build_sqs).inspect
