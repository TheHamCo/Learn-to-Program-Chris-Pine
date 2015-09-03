$nestdepth = 0
def log desc
	$nestdepth += 1
	spaces = ''
	$nestdepth.times{spaces << "	"}
	puts spaces + "Beginning '#{desc}'..."
	result = yield
	puts spaces + "...'#{desc}' finished, returning: "
	puts spaces + result.to_s
end

log('outer block'){
	log('some little block'){5}
	log('yet another block'){'I like Thai food!'}
	false
}