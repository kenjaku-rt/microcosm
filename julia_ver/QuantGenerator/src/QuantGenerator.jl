module QuantGenerator

import Random
using Random

function generate_weights()
    return rand(Xoshiro(0), Float64, ((100, 4), 100))
end

function quantum_start(delay)
    local seed = Random.seed!(0)
    while(true)
        seed = Random.seed!(seed)
        println("value = ", rand(seed, Float64), ", degree = ", rand(seed, Float64) * pi)
        sleep(delay)
    end
end


end # module QuantGenerator

QuantGenerator.quantum_start(1)
