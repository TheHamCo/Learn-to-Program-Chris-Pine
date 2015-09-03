var = Proc.new {puts "cheers!"}
var2 = Proc.new {puts "hey-oooo!"}
do_u_like = Proc.new {|food| puts "I really like #{food}."}

def proc_meth(proc, arg=nil)
	puts "This is the method."
	proc.call(arg)
	puts "We just called a proc."
end

#proc_meth(do_u_like, 'bacon')
#proc_meth(var)

def maybe_do(proc)
	if rand(2)==0
		proc.call
	end
end

def do_twice(proc)
	2.times {proc.call}
end

maybe_do(var2)
maybe_do(var2)
maybe_do(var)
maybe_do(var)
do_twice(var2)
do_twice(var)
