def compose(proc1, proc2)
	Proc.new do |x|
		proc2.call(proc1.call(x))
	end
end

sq = Proc.new {|x| x*x}
db = Proc.new {|x| x+x}

#db_then_sq = compose(db,sq)
sq_then_db = compose(sq,db)
puts compose(db,sq).call(5)
#puts db_then_sq.call(5)
puts sq_then_db.call(5)