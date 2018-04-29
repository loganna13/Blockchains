class Blockchain

	def initialize
		@chain = []
	end
	

	def mining 
	history = []
	begin
		nonce = rand(10000000)
		history << nonce
		hashed = Digest::SHA256.hexdigest(nonce.to_s) 
	end while hashed[0..3] != "0000"

		block = {
		"index" => @chain.size + 1,
		"time" => Time.now.to_i,
		"nonce" => nonce
		"previous_address" = > Digest::SHA256.hexdigest(last_block.to_s)
	}
	end
	@chain << block
	block

	def last_block 
		@chain[-1]
	end

	def all_chains
		@chain
	end

end

