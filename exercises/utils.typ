#import "@preview/suiji:0.3.0": *

#let seed = int(sys.inputs.at("seed", default:12))


#let pick(seed, num, arr) = {
  // Generate the RNG with a random seed.
  // This could also use `datetime.today().day()` or something
  // similar to return a different number every day.
  // If consecutive invocations need to yield different values,
  // you can alternatively pass the seed as an argument.
  let rng = gen-rng(seed)
  integers(rng, high: arr.len(), size: num)
    .at(1)
    .map(idx => arr.at(idx))
}



// zio cane che fatica 

//#let shuffle-arrays = (seed, arrays) => {
//    let rng = gen-rng(seed)
//    
//    // Shuffle each sub-array while maintaining RNG state
//    let result = arrays.fold((rng, []), (state, array) => {
//        let (current-rng, shuffled-subarrays) = state
//        let (new-rng, shuffled-array) = shuffle(current-rng, array)
//        (new-rng, (shuffled-array,))  // Always append arrays
//    })
//
//    // Extract the final RNG and convert the sequence to an array
//    let (rng1, shuffled-subarrays-seq) = result
//    let shuffled-subarrays = ([..shuffled-subarrays-seq],)  // Convert sequence to array
//
//    // Shuffle the top-level array (must also be a valid array)
//    let (final-rng, shuffled-main) = shuffle(rng1, shuffled-subarrays)
//
//    (final-rng, shuffled-main)
//}

#let shuffle-arrays = (seed, arrays) => {
    let rng = gen-rng(seed)
    
    // Shuffle each sub-array while maintaining RNG state
    let result = arrays.fold((rng, ()), (state, array) => {
        let (current-rng, shuffled-subarrays) = state
        let (new-rng, shuffled-array) = shuffle(current-rng, array)
        (new-rng, shuffled-subarrays + (shuffled-array,))  // Always append arrays
    })

    // Extract the final RNG and convert the sequence to an array
    let (rng1, shuffled-subarrays-seq) = result
    let shuffled-subarrays = (..shuffled-subarrays-seq)  // Convert sequence to array

    // Shuffle the top-level array (must also be a valid array)
    let (final-rng, shuffled-main) = shuffle(rng1, shuffled-subarrays)

    (final-rng, shuffled-main)
}

// TODO usare questa quando si passa rng da utils.typ invece di seed
//#let shuffle-arrays(rng, arrays) = {
//    // Shuffle each sub-array while maintaining RNG state
//    let (rng, arrays) = arrays.fold((rng, ()), ((rng, arrays), array) => {
//        let (rng, array) = shuffle(rng, array)
//        (rng, (..arrays, array))  // Always append arrays
//    })
//
//    // Shuffle the top-level array (must also be a valid array)
//    shuffle(rng, arrays)
//}
